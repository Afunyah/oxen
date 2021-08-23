import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:oxen/auth/auth_utils.dart';
import 'package:oxen/screens/splashscreen_page/splashscreen_page.dart';

import 'package:oxen/amplifyconfiguration.dart';
import 'package:oxen/flutter_flow/flutter_flow_theme.dart';
import 'package:oxen/flutter_flow/flutter_flow_util.dart';
import 'package:oxen/flutter_flow/flutter_flow_widgets.dart';
import 'package:oxen/screens/login_page/login_page.dart';
import 'package:oxen/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';
Future<void> configureAmplify() async {
  // Add Pinpoint and Cognito Plugins, or any other plugins you want to use
  AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
  Amplify.addPlugins([authPlugin]);

  // Once Plugins are added, configure Amplify. Note: Amplify can only be configured once.
  try {
    // await Amplify.configure(amplifyconfig).whenComplete(() => checkSession());\
    await Amplify.configure(amplifyconfig);
    StreamSubscription hubSubscription =
        Amplify.Hub.listen([HubChannel.Auth], (hubEvent) {
      switch (hubEvent.eventName) {
        case "SIGNED_IN":
          {
            print("USER IS SIGNED IN");
          }
          break;
        case "SIGNED_OUT":
          {
            print("USER IS SIGNED OUT");
          }
          break;
        case "SESSION_EXPIRED":
          {
            print("USER IS SIGNED IN/SESSION EXPIRED");
          }
          break;
        default:
          print("HERE");
      }
    });
  } on AmplifyAlreadyConfiguredException {
    print(
        "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
  }
}

class InitPageWidget extends StatefulWidget {
  InitPageWidget({Key? key}) : super(key: key);

  @override
  _InitPageWidgetState createState() => _InitPageWidgetState();
}

class _InitPageWidgetState extends State<InitPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 4));
      await configureAmplify().then((validSession) {
        checkSession().then((validSession) {
          print('ValidSession -> $validSession');
          if (validSession) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
                (route) => false);
          } else {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => SplashScreenPageWidget(),
                ),
                (route) => false);
          }
        });
      });
    });
    // configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryBlack,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.primaryBlack,
          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //   image: Image.asset(
          //     'assets/images/bg_login.png',
          //   ).image,
          // ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'oxen',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Roboto',
                        fontSize: 96,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
