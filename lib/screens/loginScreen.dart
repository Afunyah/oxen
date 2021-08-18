import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:oxen/screens/confirmLogin.dart';
import 'package:oxen/screens/myTasksScreen.dart';

import '../amplifyconfiguration.dart';

import 'package:flutter_login/flutter_login.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   initState() {
//     super.initState();
//     _configureAmplify();
//   }

//   void _configureAmplify() async {
//     // Add Pinpoint and Cognito Plugins, or any other plugins you want to use
//     AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
//     await Amplify.addPlugins([authPlugin]);

//     // Once Plugins are added, configure Amplify
//     // Note: Amplify can only be configured once.
//     try {
//       await Amplify.configure(amplifyconfig);
//     } on AmplifyAlreadyConfiguredException {
//       print(
//           "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
//     }
//   }

//   Future<String?> _regUser(LoginData data) async {
//     print('Name: ${data.name}, Password: ${data.password}');

//     try {
//       Map<String, String> userAttributes = {
//         'email': data.name,
//       };
//       SignUpResult res = await Amplify.Auth.signUp(
//           username: data.name,
//           password: data.password,
//           options: CognitoSignUpOptions(userAttributes: userAttributes));
//       setState(() {
//         bool isSignUpComplete = res.isSignUpComplete;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//       return e.message;
//     }
//   }

//   Future<String?> _authUser(LoginData data) async {
//     print('Name: ${data.name}, Password: ${data.password}');

//     try {
//       SignInResult res = await Amplify.Auth.signIn(
//         username: data.name,
//         password: data.password,
//       );
//       setState(() {
//         bool isSignedIn = res.isSignedIn;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//       return e.message;
//     }
//   }

//   Future<String?> _recoverPassword(String name) async {
//     try {
//       ResetPasswordResult res = await Amplify.Auth.resetPassword(
//         username: name,
//       );
//       setState(() {
//         bool isPasswordReset = res.isPasswordReset;
//       });
//     } on AmplifyException catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'Oxen',
//       onLogin: _authUser,
//       onSignup: _regUser,
//       onRecoverPassword: _recoverPassword,
//     );
//   }
// }

// import '../auth/auth_util.dart';
import 'changePasswordScreen.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'registerScreen.dart';
import '../auth/authUtil.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordTextController;
  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    configureAmplify();
    phoneNumberController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.primaryColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      'oxen',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Roboto',
                        fontSize: 72,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: InkWell(
                          // onTap: () async {
                          //   await Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ChangePasswordWidget(),
                          //     ),
                          //   );
                          // },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextFormField(
                                controller: phoneNumberController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: null,
                                  ),
                                  hintText: 'Your phone number...',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x9AFFFFFF),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.secondaryColor,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                ),
                                keyboardType: TextInputType.phone,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Please fill in a valid phone number...';
                                  }

                                  return null;
                                },
                              ),
                              // Padding(
                              //   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              //   child: TextFormField(
                              //     controller: passwordTextController,
                              //     obscureText: !passwordVisibility,
                              //     decoration: InputDecoration(
                              //       labelText: 'Password',
                              //       labelStyle:
                              //           FlutterFlowTheme.bodyText1.override(
                              //         fontFamily: 'Lexend Deca',
                              //       ),
                              //       hintText: 'Enter your password here...',
                              //       hintStyle:
                              //           FlutterFlowTheme.bodyText1.override(
                              //         fontFamily: 'Lexend Deca',
                              //         color: Color(0x9AFFFFFF),
                              //       ),
                              //       enabledBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: FlutterFlowTheme.secondaryColor,
                              //           width: 1,
                              //         ),
                              //         borderRadius: BorderRadius.only(
                              //           bottomLeft: Radius.circular(8),
                              //           bottomRight: Radius.circular(8),
                              //           topLeft: Radius.circular(8),
                              //           topRight: Radius.circular(8),
                              //         ),
                              //       ),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: FlutterFlowTheme.secondaryColor,
                              //           width: 1,
                              //         ),
                              //         borderRadius: BorderRadius.only(
                              //           bottomLeft: Radius.circular(8),
                              //           bottomRight: Radius.circular(8),
                              //           topLeft: Radius.circular(8),
                              //           topRight: Radius.circular(8),
                              //         ),
                              //       ),
                              //       filled: true,
                              //       fillColor: FlutterFlowTheme.secondaryColor,
                              //       prefixIcon: Icon(
                              //         Icons.lock_outline,
                              //         color: FlutterFlowTheme.primaryColor,
                              //       ),
                              //       suffixIcon: InkWell(
                              //         onTap: () => setState(
                              //           () => passwordVisibility =
                              //               !passwordVisibility,
                              //         ),
                              //         child: Icon(
                              //           passwordVisibility
                              //               ? Icons.visibility_outlined
                              //               : Icons.visibility_off_outlined,
                              //           color: Color(0x80FFFFFF),
                              //           size: 22,
                              //         ),
                              //       ),
                              //     ),
                              //     style: FlutterFlowTheme.bodyText1.override(
                              //       fontFamily: 'Lexend Deca',
                              //     ),
                              //     validator: (val) {
                              //       if (val!.isEmpty) {
                              //         return 'That password doesn\'t match.';
                              //       }

                              //       return null;
                              //     },
                              //   ),
                              // ),
                              // Align(
                              //   alignment: Alignment(0, 0),
                              //   child: Padding(
                              //     padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                              //     child: FFButtonWidget(
                              //       onPressed: () async {
                              //         await Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //             builder: (context) =>
                              //                 ChangePasswordWidget(),
                              //           ),
                              //         );
                              //       },
                              //       text: 'Forgotten password?',
                              //       options: FFButtonOptions(
                              //         width: double.infinity,
                              //         height: 40,
                              //         color: FlutterFlowTheme.primaryColor,
                              //         textStyle:
                              //             FlutterFlowTheme.subtitle2.override(
                              //           fontFamily: 'Lexend Deca',
                              //           color: Colors.white,
                              //         ),
                              //         borderSide: BorderSide(
                              //           color: Colors.transparent,
                              //           width: 1,
                              //         ),
                              //         borderRadius: 12,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    // if (!formKey.currentState!.validate()) {
                                    //   return;
                                    // }
                                    final user = await authUser(
                                      phoneNumberController.text,
                                    );

                                    print('Login Status:' + user.toString());

                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              // NavBarPage(initialPage: 'myTasks'),
                                              ConfirmLoginWidget(
                                                  phoneNumberController.text)),
                                    );
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: FlutterFlowTheme.darkBG,
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 8,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 30),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 6),
                                        child: Text(
                                          'Don’t have an account yet? ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.darkBG,
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 200),
                                              reverseDuration:
                                                  Duration(milliseconds: 200),
                                              child: RegisterWidget(),
                                            ),
                                          );
                                        },
                                        text: 'Register',
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 32,
                                          color: FlutterFlowTheme.primaryColor,
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 3, 0, 18),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      userSignOut();
                                    },
                                    text: 'Log Out',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 20,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                      ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 0,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
