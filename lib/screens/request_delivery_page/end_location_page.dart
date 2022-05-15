import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oxen/flutter_flow/flutter_flow_theme.dart';
import 'package:oxen/flutter_flow/flutter_flow_widgets.dart';
import 'package:oxen/screens/request_delivery_page/LocationDetails.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;



class EndLocationPageWidget extends StatefulWidget {
  const EndLocationPageWidget({Key? key}) : super(key: key);

  static const routeName = '/EndLocationPage';
  @override
  _EndLocationPageWidgetState createState() =>
      _EndLocationPageWidgetState();
}

class _EndLocationPageWidgetState extends State<EndLocationPageWidget> {
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
        // Use location.
      }

      if (await Permission.location.request().isGranted) {
        // Either the permission was already granted before or the user just granted it.
      } else {
        // Map<Permission, PermissionStatus> statuses = await [
        //   Permission.location,
        //   Permission.storage,
        // ].request();
      }
    });
  }

  bool true_idle = false;
  bool movingToTarget = false;
  bool onTarget = false;
  bool isChecking = false;

  String googleApikey = "AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4";
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  String location = "Search Location";
  Set<Marker> markers = new Set();

  double lat1 = 5.603717;
  double lon1 = -0.186964;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as LocationDetails;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.darkBG,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, args);
              },
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.white,
                size: 32,
              )),
          title: Text(
            'Select Drop-Off Location',
            style: FlutterFlowTheme.title3.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.white,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: IgnorePointer(
            ignoring: movingToTarget || isChecking,
            child: Stack(alignment: Alignment.center, children: [
              IgnorePointer(),
              GoogleMap(
                markers: markers,
                zoomGesturesEnabled: true,
                initialCameraPosition: (args.name != '')
                    ? CameraPosition(
                        target: LatLng(args.latitude, args.longitude),
                        zoom: 16.0,
                      )
                    : CameraPosition(
                        target: LatLng(lat1, lon1),
                        zoom: 16.0,
                      ),
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                mapType: MapType.normal, //map type
                onMapCreated: (controller) {
                  //method called when map is created
                  setState(() {
                    mapController = controller;
                    if (args.name != '') {
                      lat1 = args.latitude;
                      lon1 = args.longitude;
                      location = args.name;
                    }
                    cameraPosition = CameraPosition(target: LatLng(lat1, lon1));
                  });
                },
                onCameraMove: (CameraPosition cameraPositiona) {
                  true_idle = false;
                  // print("ACTIVE state");
                  cameraPosition = cameraPositiona;
                },
                onCameraMoveStarted: () {
                  if (onTarget || !movingToTarget) {
                    setState(() {
                      location = "Search Location";
                    });
                  }
                },
                onCameraIdle: () async {
                  setState(() {
                    if (movingToTarget) {
                      onTarget = true;
                    }
                    movingToTarget = false;
                  });
                  // IDLE LOGIC FOR REAL TIME UPDATES - EXPENSIVE
                  // true_idle = true;
                  // print("IDLE state");
                  // await Future.delayed(Duration(seconds: 3));
                  // if(true_idle){
                  //   print("TRUE IDLE state");
                  // }

                  // try {
                  //   await Future.delayed(Duration(seconds: 3));
                  //   double lat1 = cameraPosition!.target.latitude;
                  //   double lon1 = cameraPosition!.target.longitude;

                  //   var url = Uri.parse(
                  //       "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat1,$lon1&key=AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4");

                  //   var response = await http.get(url);
                  //   var tRes = json.decode(response.body);
                  //   print(tRes["results"][0]["formatted_address"]);
                  // } catch (e) {}

                  try {
                    lat1 = cameraPosition!.target.latitude;
                    lon1 = cameraPosition!.target.longitude;
                  } catch (e) {}
                },
              ),

              Center(
                //picker image on google map
                child: Icon(
                  Icons.location_on,
                  color: FlutterFlowTheme.secondaryColor,
                  size: 50.0,
                ),
              ),
              Positioned(
                bottom: 20,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          try {
                            setState(() {
                              isChecking = true;
                            });
                            lat1 = cameraPosition!.target.latitude;
                            lon1 = cameraPosition!.target.longitude;
                            var url = Uri.parse(
                                "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat1,$lon1&key=AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4");

                            var response = await http.get(url);
                            var tRes = json.decode(response.body);
                            var fAddr = tRes["results"][0]["formatted_address"];
                            print(fAddr);
                            setState(() {
                              isChecking = false;
                              location = fAddr;
                            });
                          } catch (e) {}
                        },
                        text: 'Check',
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          color: FlutterFlowTheme.darkBG,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          try {
                            setState(() {
                              isChecking = true;
                            });
                            lat1 = cameraPosition!.target.latitude;
                            lon1 = cameraPosition!.target.longitude;

                            var url = Uri.parse(
                                "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat1,$lon1&key=AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4");

                            var response = await http.get(url);
                            var tRes = json.decode(response.body);
                            var fAddr = tRes["results"][0]["formatted_address"];
                            print(fAddr);

                            LocationDetails endLocationDetails =
                                LocationDetails(fAddr, lat1, lon1);

                            Navigator.pop(context, endLocationDetails);
                          } catch (e) {
                            setState(() {
                              isChecking = false;
                            });
                          }
                        },
                        text: 'Confirm',
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          color: FlutterFlowTheme.darkBG,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //search autoconplete input
              Positioned(
                  //search input bar
                  top: 0,
                  child: InkWell(
                      onTap: () async {
                        Prediction? place = await PlacesAutocomplete.show(
                            context: context,
                            apiKey: googleApikey,
                            mode: Mode.overlay,
                            types: [],
                            strictbounds: false,
                            components: [Component(Component.country, 'gh')],
                            //google_map_webservice package
                            onError: (err) {
                              print(err);
                            });

                        if (place != null) {
                          setState(() {
                            location = place.description.toString();
                          });

                          //form google_maps_webservice package
                          final plist = GoogleMapsPlaces(
                            apiKey: googleApikey,
                            apiHeaders: await GoogleApiHeaders().getHeaders(),
                            //from google_api_headers package
                          );
                          String placeid = place.placeId ?? "0";
                          final detail =
                              await plist.getDetailsByPlaceId(placeid);
                          final geometry = detail.result.geometry!;
                          final lat = geometry.location.lat;
                          final lang = geometry.location.lng;
                          var newlatlang = LatLng(lat, lang);
                          setState(() {
                            movingToTarget = true;
                            onTarget = false;
                          });

                          //move map camera to selected place with animation
                          mapController?.animateCamera(
                              CameraUpdate.newCameraPosition(CameraPosition(
                                  target: newlatlang, zoom: 17)));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Card(
                          child: Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 40,
                              child: ListTile(
                                leading: Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.secondaryColor,
                                  size: 35.0,
                                ),
                                title: Text(
                                  location,
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: Icon(Icons.search),
                                dense: true,
                              )),
                        ),
                      ))),
              Positioned(
                right: 10,
                bottom: 60,
                child: FloatingActionButton(
                  onPressed: () async {
                    try {
                      Position position = await Geolocator.getCurrentPosition(
                          desiredAccuracy: LocationAccuracy.high);

                      setState(() {
                        movingToTarget = true;
                        onTarget = false;
                      });
                      mapController?.animateCamera(
                          CameraUpdate.newCameraPosition(CameraPosition(
                              target:
                                  LatLng(position.latitude, position.longitude),
                              zoom: 17)));
                    } catch (e) {}
                  },
                  backgroundColor: FlutterFlowTheme.darkBG,
                  child: const Icon(Icons.navigation),
                ),
              ),
            ])));
  }
}
