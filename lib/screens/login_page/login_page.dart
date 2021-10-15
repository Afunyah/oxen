import 'package:flutter/material.dart';
import 'package:oxen/screens/confirm_login_page/confirm_login_page.dart';
import 'package:oxen/flutter_flow/flutter_flow_theme.dart';
import 'package:oxen/flutter_flow/flutter_flow_util.dart';
import 'package:oxen/flutter_flow/flutter_flow_widgets.dart';
import 'package:oxen/screens/register_page/register_page.dart';
import 'package:oxen/auth/auth_utils.dart';
import 'package:page_transition/page_transition.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordTextController;
  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late bool buttonDisabled;

  void buttonLogic() async {
    buttonDisabled = true;
    if (!formKey.currentState!.validate()) {
      return;
    }
    bool user = await authUser(
      phoneNumberController.text,
    );

    if (!user) {
      buttonDisabled = false;
      return;
    }

    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ConfirmLoginPageWidget()),
    );
  }

  @override
  void initState() {
    super.initState();
    // configureAmplify();
    phoneNumberController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;

    buttonDisabled = false;
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
                                  onPressed: () {
                                    if (buttonDisabled) {
                                    } else {
                                      buttonLogic();
                                    }
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
                                              child: RegisterPageWidget(),
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
