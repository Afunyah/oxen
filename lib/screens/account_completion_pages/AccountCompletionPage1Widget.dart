import 'package:flutter/services.dart';
import 'package:oxen/auth/auth_utils.dart';
import 'package:oxen/models/ModelProvider.dart';
import 'package:oxen/flutter_flow/flutter_flow_theme.dart';
import 'package:oxen/flutter_flow/flutter_flow_util.dart';
import 'package:oxen/flutter_flow/flutter_flow_widgets.dart';
import 'package:oxen/globals.dart';
import 'package:oxen/screens/home_page/home_page.dart';

import 'package:oxen/screens/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCompletionPage1Widget extends StatefulWidget {
  AccountCompletionPage1Widget({Key? key}) : super(key: key);

  @override
  _AccountCompletionPage1WidgetState createState() =>
      _AccountCompletionPage1WidgetState();
}

class _AccountCompletionPage1WidgetState
    extends State<AccountCompletionPage1Widget> {
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? emailController;

  ScrollController? scrollController;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool loadingPath = false;

  @override
  void initState() {
    super.initState();

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.primaryColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.primaryColor,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment(0, 0),
                              child: Text(
                                'oxen',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 64,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: firstNameController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'First Name',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    hintText: 'First Name',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.secondaryColor,
                                        width: 2,
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
                                        width: 2,
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
                                    contentPadding:
                                        EdgeInsets.fromLTRB(16, 16, 0, 16),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              )
                            ])),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: lastNameController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Surname',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    hintText: 'Surname',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x9AFFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.secondaryColor,
                                        width: 2,
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
                                        width: 2,
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
                                    contentPadding:
                                        EdgeInsets.fromLTRB(16, 16, 0, 16),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              )
                            ])),
                    // Padding(
                    //     padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    //     child: Row(
                    //         mainAxisSize: MainAxisSize.max,
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Expanded(
                    //             child: TextFormField(
                    //               controller: licenseNumberController,
                    //               obscureText: false,
                    //               decoration: InputDecoration(
                    //                 labelText: 'License Number',
                    //                 labelStyle:
                    //                     FlutterFlowTheme.bodyText1.override(
                    //                   fontFamily: 'Poppins',
                    //                   color: Color(0xFF95A1AC),
                    //                 ),
                    //                 hintText: 'License Number',
                    //                 hintStyle:
                    //                     FlutterFlowTheme.bodyText1.override(
                    //                   fontFamily: 'Poppins',
                    //                   color: Color(0xFF95A1AC),
                    //                 ),
                    //                 enabledBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(
                    //                     color: Color(0xFFDBE2E7),
                    //                     width: 2,
                    //                   ),
                    //                   borderRadius: BorderRadius.only(
                    //                     bottomLeft: Radius.circular(8),
                    //                     bottomRight: Radius.circular(8),
                    //                     topLeft: Radius.circular(8),
                    //                     topRight: Radius.circular(8),
                    //                   ),
                    //                 ),
                    //                 focusedBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(
                    //                     color: Color(0xFFDBE2E7),
                    //                     width: 2,
                    //                   ),
                    //                   borderRadius: BorderRadius.only(
                    //                     bottomLeft: Radius.circular(8),
                    //                     bottomRight: Radius.circular(8),
                    //                     topLeft: Radius.circular(8),
                    //                     topRight: Radius.circular(8),
                    //                   ),
                    //                 ),
                    //                 filled: true,
                    //                 fillColor: FlutterFlowTheme.tertiaryColor,
                    //                 contentPadding:
                    //                     EdgeInsets.fromLTRB(16, 16, 0, 16),
                    //               ),
                    //               style: FlutterFlowTheme.bodyText1.override(
                    //                 fontFamily: 'Poppins',
                    //                 color: Color(0xFF2B343A),
                    //               ),
                    //               keyboardType: TextInputType.phone,
                    //             ),
                    //           )
                    //         ])),

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              await registerCustomer(
                                Globals.getPhoneNumber(),
                                firstNameController!.text,
                                lastNameController!.text,
                              );

                              await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                  (route) => false);
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 120,
                              height: 40,
                              color: FlutterFlowTheme.darkBG,
                              textStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await userSignOut();
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPageWidget(),
                                      ),
                                      (route) => false);
                                },
                                text: 'Logout',
                                options: FFButtonOptions(
                                  width: 120,
                                  height: 40,
                                  color: FlutterFlowTheme.darkBG,
                                  textStyle:
                                      FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
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
                              )
                            ])),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
