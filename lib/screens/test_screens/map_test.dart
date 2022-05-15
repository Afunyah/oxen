import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:geocoding/geocoding.dart';

// class MapTestWidget extends StatefulWidget{
//   @override
//   _MapTestWidgetState createState() => _MapTestWidgetState();
// }

// class _MapTestWidgetState extends State<MapTestWidget> {

//   GoogleMapController? mapController; //contrller for Google map
//   Set<Marker> markers = Set(); //markers for google map
//   LatLng showLocation = LatLng(27.7089427, 85.3086209);
//                             //location to show in map

//   @override
//   void initState() {
//     Permission.location.request();

//       markers.add(Marker( //add marker on google map
//           markerId: MarkerId(showLocation.toString()),
//           position: showLocation, //position of marker
//           infoWindow: InfoWindow( //popup info
//             title: 'My Custom Title ',
//             snippet: 'My Custom Subtitle',
//           ),
//           icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ));

//       //you can add more markers here
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//           appBar: AppBar(
//              title: Text("Google Map in Flutter"),
//              backgroundColor: Colors.deepPurpleAccent,
//           ),
//           body: GoogleMap( //Map widget from google_maps_flutter package
//                     zoomGesturesEnabled: true, //enable Zoom in, out on map
//                     initialCameraPosition: CameraPosition( //innital position in map
//                       target: showLocation, //initial position
//                       zoom: 10.0, //initial zoom level
//                     ),
//                     markers: markers, //markers to show on map
//                     mapType: MapType.normal, //map type
//                     onMapCreated: (controller) { //method called when map is created
//                       setState(() {
//                         mapController = controller;
//                       });
//                     },
//               ),
//        );
//   }
// }

// class MapTestWidget extends StatefulWidget {
//   @override
//   _MapTestWidgetState createState() => _MapTestWidgetState();
// }

// class _MapTestWidgetState extends State<MapTestWidget> {
//   String googleApikey = "AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4";
//   GoogleMapController? mapController; //contrller for Google map
//   CameraPosition? cameraPosition;
//   LatLng startLocation = LatLng(5.603717, -0.186964);
//   String location = "Search Location";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Place Search Autocomplete Google Map"),
//           backgroundColor: Colors.deepPurpleAccent,
//         ),
//         body: Stack(children: [
//           GoogleMap(
//             //Map widget from google_maps_flutter package
//             zoomGesturesEnabled: true, //enable Zoom in, out on map
//             initialCameraPosition: CameraPosition(
//               //innital position in map
//               target: startLocation, //initial position
//               zoom: 14.0, //initial zoom level
//             ),
//             mapType: MapType.normal, //map type
//             onMapCreated: (controller) {
//               //method called when map is created
//               setState(() {
//                 mapController = controller;
//               });
//             },
//             onCameraMove: (CameraPosition cameraPositiona) {
//               cameraPosition = cameraPositiona;
//             },
//             onCameraIdle: () async {
//               List<Placemark> placemarks = await placemarkFromCoordinates(
//                   cameraPosition!.target.latitude,
//                   cameraPosition!.target.longitude);
//               setState(() {
//                 location = placemarks.first.administrativeArea.toString() +
//                     ", " +
//                     placemarks.first.street.toString();
//               });
//             },
//           ),

//           Center(
//             //picker image on google map
//             child: Icon(
//               Icons.location_on,
//               color: Colors.blue,
//               size: 80.0,
//             ),
//           ),

//           //search autoconplete input
//           Positioned(
//               //search input bar
//               top: 10,
//               child: InkWell(
//                   onTap: () async {
//                     var place = await PlacesAutocomplete.show(
//                         context: context,
//                         apiKey: googleApikey,
//                         mode: Mode.overlay,
//                         types: [],
//                         strictbounds: false,
//                         components: [Component(Component.country, 'gh')],
//                         //google_map_webservice package
//                         onError: (err) {
//                           print(err);
//                         });

//                     if (place != null) {
//                       setState(() {
//                         location = place.description.toString();
//                       });

//                       //form google_maps_webservice package
//                       final plist = GoogleMapsPlaces(
//                         apiKey: googleApikey,
//                         apiHeaders: await GoogleApiHeaders().getHeaders(),
//                         //from google_api_headers package
//                       );
//                       String placeid = place.placeId ?? "0";
//                       final detail = await plist.getDetailsByPlaceId(placeid);
//                       final geometry = detail.result.geometry!;
//                       final lat = geometry.location.lat;
//                       final lang = geometry.location.lng;
//                       var newlatlang = LatLng(lat, lang);

//                       //move map camera to selected place with animation
//                       mapController?.animateCamera(
//                           CameraUpdate.newCameraPosition(
//                               CameraPosition(target: newlatlang, zoom: 17)));
//                     }
//                   },
//                   child: Padding(
//                     padding: EdgeInsets.all(15),
//                     child: Card(
//                       child: Container(
//                           padding: EdgeInsets.all(0),
//                           width: MediaQuery.of(context).size.width - 40,
//                           child: ListTile(
//                             leading: Icon(
//                               Icons.location_on,
//                               color: Colors.blue,
//                               size: 25.0,
//                             ),
//                             title: Text(
//                               location,
//                               style: TextStyle(fontSize: 18),
//                             ),
//                             trailing: Icon(Icons.search),
//                             dense: true,
//                           )),
//                     ),
//                   )))
//         ]));
//   }
// }




// Version below is good, with search and current location 
class MapTestWidget extends StatefulWidget {
  @override
  _MapTestWidgetState createState() => _MapTestWidgetState();
}

class _MapTestWidgetState extends State<MapTestWidget> {
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

  String googleApikey = "AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4";
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(5.603717, -0.186964);
  String location = "Search Location";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Place Search Autocomplete Google Map"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Stack(children: [
          GoogleMap(
            //Map widget from google_maps_flutter package
            zoomGesturesEnabled: true, //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: startLocation, //initial position
              zoom: 14.0, //initial zoom level
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal, //map type
            onMapCreated: (controller) {
              //method called when map is created
              setState(() {
                mapController = controller;
              });
            },
            onCameraMove: (CameraPosition cameraPositiona) {
              cameraPosition = cameraPositiona;
            },
            onCameraIdle: () async {
              List<Placemark> placemarks = await placemarkFromCoordinates(
                  cameraPosition!.target.latitude,
                  cameraPosition!.target.longitude);
              setState(() {
                location = placemarks.first.administrativeArea.toString() +
                    ", " +
                    placemarks.first.street.toString();
              });
            },
          ),

          Center(
            //picker image on google map
            child: Icon(
              Icons.location_on,
              color: Colors.blue,
              size: 80.0,
            ),
          ),

          //search autoconplete input
          Positioned(
              //search input bar
              top: 50,
              child: InkWell(
                  onTap: () async {
                    var place = await PlacesAutocomplete.show(
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
                      final detail = await plist.getDetailsByPlaceId(placeid);
                      final geometry = detail.result.geometry!;
                      final lat = geometry.location.lat;
                      final lang = geometry.location.lng;
                      var newlatlang = LatLng(lat, lang);

                      //move map camera to selected place with animation
                      mapController?.animateCamera(
                          CameraUpdate.newCameraPosition(
                              CameraPosition(target: newlatlang, zoom: 17)));
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
                              color: Colors.blue,
                              size: 25.0,
                            ),
                            title: Text(
                              location,
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: Icon(Icons.search),
                            dense: true,
                          )),
                    ),
                  )))
        ]));
  }
}
