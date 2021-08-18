import '../auth/authUtil.dart';
// import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'loginScreen.dart';
import 'verifyScreen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late TextEditingController confirmPasswordTextController;
  late bool passwordVisibility2;
  late TextEditingController phoneNumberController;
  late TextEditingController fullNameController;
  late TextEditingController passwordTextController;
  late bool passwordVisibility1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    configureAmplify();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    phoneNumberController = TextEditingController();
    fullNameController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 36),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // TextFormField(
                          //   controller: fullNameController,
                          //   obscureText: false,
                          //   decoration: InputDecoration(
                          //     labelText: 'Full Name',
                          //     labelStyle: FlutterFlowTheme.bodyText1.override(
                          //       fontFamily: 'Lexend Deca',
                          //     ),
                          //     hintText: 'Enter your name here...',
                          //     hintStyle: FlutterFlowTheme.bodyText1.override(
                          //       fontFamily: 'Lexend Deca',
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //         color: FlutterFlowTheme.secondaryColor,
                          //         width: 1,
                          //       ),
                          //       borderRadius: BorderRadius.only(
                          //         bottomLeft: Radius.circular(8),
                          //         bottomRight: Radius.circular(8),
                          //         topLeft: Radius.circular(8),
                          //         topRight: Radius.circular(8),
                          //       ),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //         color: FlutterFlowTheme.secondaryColor,
                          //         width: 1,
                          //       ),
                          //       borderRadius: BorderRadius.only(
                          //         bottomLeft: Radius.circular(8),
                          //         bottomRight: Radius.circular(8),
                          //         topLeft: Radius.circular(8),
                          //         topRight: Radius.circular(8),
                          //       ),
                          //     ),
                          //     filled: true,
                          //     fillColor: FlutterFlowTheme.secondaryColor,
                          //   ),
                          //   style: FlutterFlowTheme.bodyText1.override(
                          //     fontFamily: 'Lexend Deca',
                          //   ),
                          //   keyboardType: TextInputType.emailAddress,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              controller: phoneNumberController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                ),
                                hintText: 'Enter your phone number here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
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
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          //   child: TextFormField(
                          //     controller: passwordTextController,
                          //     obscureText: !passwordVisibility1,
                          //     decoration: InputDecoration(
                          //       labelText: 'Password',
                          //       labelStyle: FlutterFlowTheme.bodyText1.override(
                          //         fontFamily: 'Lexend Deca',
                          //       ),
                          //       hintText: 'Enter your password here...',
                          //       hintStyle: FlutterFlowTheme.bodyText1.override(
                          //         fontFamily: 'Lexend Deca',
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
                          //       suffixIcon: InkWell(
                          //         onTap: () => setState(
                          //           () => passwordVisibility1 =
                          //               !passwordVisibility1,
                          //         ),
                          //         child: Icon(
                          //           passwordVisibility1
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
                          //   ),
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          //   child: TextFormField(
                          //     controller: confirmPasswordTextController,
                          //     obscureText: !passwordVisibility2,
                          //     decoration: InputDecoration(
                          //       labelText: 'Confirm Password',
                          //       labelStyle: FlutterFlowTheme.bodyText1.override(
                          //         fontFamily: 'Lexend Deca',
                          //       ),
                          //       hintText: 'Confirm password here...',
                          //       hintStyle: FlutterFlowTheme.bodyText1.override(
                          //         fontFamily: 'Lexend Deca',
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
                          //       suffixIcon: InkWell(
                          //         onTap: () => setState(
                          //           () => passwordVisibility2 =
                          //               !passwordVisibility2,
                          //         ),
                          //         child: Icon(
                          //           passwordVisibility2
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
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // if (passwordTextController.text !=
                                //     confirmPasswordTextController.text) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     SnackBar(
                                //       content: Text(
                                //         "Passwords don't match!",
                                //       ),
                                //     ),
                                //   );
                                //   return;
                                // }

                                final user = await regUser(
                                  phoneNumberController.text,
                                );
                                if (!user) {
                                  return;
                                }

                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VerifyWidget(
                                        phoneNumberController.text),
                                  ),
                                );
                              },
                              text: 'Create Account',
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color: FlutterFlowTheme.darkBG,
                                textStyle: FlutterFlowTheme.subtitle2.override(
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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child: Text(
                                    'Don’t have an account yet? ',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.darkBG,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 200),
                                          reverseDuration:
                                              Duration(milliseconds: 200),
                                          child: LoginWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: 80,
                                      height: 30,
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
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
