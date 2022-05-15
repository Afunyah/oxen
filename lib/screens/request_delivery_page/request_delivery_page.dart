import 'dart:convert';

import 'package:oxen/auth/auth_utils.dart';
import 'package:oxen/auth/customer_utils.dart';
import 'package:oxen/flutter_flow/flutter_flow_theme.dart';
import 'package:oxen/flutter_flow/flutter_flow_util.dart';
import 'package:oxen/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:oxen/globals.dart';
import 'package:oxen/screens/request_delivery_page/LocationDetails.dart';
import 'package:oxen/screens/request_delivery_page/end_location_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:oxen/screens/test_screens/map_test.dart';
import 'package:oxen/screens/request_delivery_page/start_location_page.dart';
import 'package:http/http.dart' as http;

class RequestDeliveryPageWidget extends StatefulWidget {
  const RequestDeliveryPageWidget({Key? key}) : super(key: key);

  @override
  _RequestDeliveryPageWidgetState createState() =>
      _RequestDeliveryPageWidgetState();
}

class _RequestDeliveryPageWidgetState extends State<RequestDeliveryPageWidget> {
  late TextEditingController startPointController;
  late TextEditingController endPointController;
  late TextEditingController pickUpTimeController;

  late LocationDetails sLocData;
  late LocationDetails eLocData;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    startPointController = TextEditingController();
    endPointController = TextEditingController();
    pickUpTimeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.darkBG,
        automaticallyImplyLeading: false,
        leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.white,
                size: 32,
              )),
        title: Text(
          'Request Delivery',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Lexend Deca',
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 36),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                width:
                                    (MediaQuery.of(context).size.width - 20) *
                                        0.9,
                                child: TextFormField(
                                  controller: startPointController,
                                  readOnly: true,
                                  onTap: () async {
                                    sLocData = await Navigator.pushNamed(
                                        context,
                                        StartLocationPageWidget.routeName,
                                        arguments: (startPointController.text !=
                                                '')
                                            ? sLocData
                                            : LocationDetails('', 5.603717,
                                                -0.186964)) as LocationDetails;

                                    print(
                                        "This is: $sLocData for ${sLocData.name}");
                                    startPointController.value =
                                        startPointController.value
                                            .copyWith(text: sLocData.name);
                                  },
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pick-Up Location',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                    ),
                                    hintText: 'Pick-Up Location',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
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
                                )),
                            Container(
                                alignment: Alignment.center,
                                width:
                                    (MediaQuery.of(context).size.width - 20) *
                                        0.1,
                                child: IconButton(
                                  onPressed: (() async {
                                    startPointController.clear();
                                  }),
                                  icon: Icon(Icons.clear),
                                  padding: EdgeInsets.all(0),
                                ))
                          ]),
                          Row(children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                width:
                                    (MediaQuery.of(context).size.width - 20) *
                                        0.9,
                                child: TextFormField(
                                  controller: endPointController,
                                  readOnly: true,
                                  onTap: () async {
                                    eLocData = await Navigator.pushNamed(
                                        context,
                                        EndLocationPageWidget.routeName,
                                        arguments: (endPointController.text !=
                                                '')
                                            ? eLocData
                                            : LocationDetails('', 5.603717,
                                                -0.186964)) as LocationDetails;

                                    print(
                                        "This is: $eLocData for ${eLocData.name}");
                                    endPointController.value =
                                        endPointController.value
                                            .copyWith(text: eLocData.name);
                                  },
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Drop-Off Location',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                    ),
                                    hintText: 'Drop-Off Location',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
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
                                )),
                            Container(
                                alignment: Alignment.center,
                                width:
                                    (MediaQuery.of(context).size.width - 20) *
                                        0.1,
                                child: IconButton(
                                  onPressed: (() async {
                                    endPointController.clear();
                                  }),
                                  icon: Icon(Icons.clear),
                                  padding: EdgeInsets.all(0),
                                ))
                          ]),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              controller: pickUpTimeController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Pick-Up Time',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                ),
                                hintText: 'Pick-Up Time',
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // check id options. eg current session userID maybe available only in dynamodb interface etc
                                // requestDelivery(Globals.getPhoneNumber(), startPointController.text, endPointController.text, pickUpTimeController.text);
                                // await Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) =>
                                //         StartLocationPageWidget(),
                                //   ),
                                // );

                                // var url = Uri.parse(
                                //     "https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4");

                                // var response = await http.post(url);
                                // print(
                                //     'Response status: ${response.statusCode}');
                                // print('Response body: ${response.body}');
                                // var tRes = json.decode(response.body);
                                // print(tRes["results"][0]["formatted_address"]);
                              },
                              text: 'Request Delivery',
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
