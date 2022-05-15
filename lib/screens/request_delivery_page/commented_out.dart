// import 'package:oxen/screens/request_delivery_page/locationStore.dart';

// class StartLocationPageWidget extends StatefulWidget {
//   @override
//   _StartLocationPageWidgetState createState() =>
//       _StartLocationPageWidgetState();
// }

// class _StartLocationPageWidgetState extends State<StartLocationPageWidget> {
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance!.addPostFrameCallback((_) async {
//       if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
//         // Use location.
//       }

//       if (await Permission.location.request().isGranted) {
//         // Either the permission was already granted before or the user just granted it.
//       } else {
//         // Map<Permission, PermissionStatus> statuses = await [
//         //   Permission.location,
//         //   Permission.storage,
//         // ].request();
//       }
//     });
//   }

//   String googleApikey = "AIzaSyD1TDb-EWESErypCT307jYuRaXFECrgaR4";
//   GoogleMapController? mapController; //contrller for Google map
//   CameraPosition? cameraPosition;
//   LatLng startLocation = LatLng(5.603717, -0.186964);
//   String location = "Search Location";
//   Set<Marker> markers = new Set();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Select Start Location"),
//           backgroundColor: Colors.deepPurpleAccent,
//         ),
//         body: Stack(children: [
//           GoogleMap(
//             //Map widget from google_maps_flutter package
//             markers: markers,
//             zoomGesturesEnabled: true, //enable Zoom in, out on map
//             initialCameraPosition: CameraPosition(
//               //innital position in map
//               target: startLocation, //initial position
//               zoom: 14.0, //initial zoom level
//             ),
//             myLocationEnabled: true,
//             myLocationButtonEnabled: true,
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
//               // String admin = '';
//               // String subAdmin = '';
//               // String locality = '';
//               // String subLocality = '';
//               // String name = '';
//               // String street = '';
//               // String postalCode = '';

//               // List<String> locDetails = [
//               //   placemarks.first.administrativeArea.toString(),
//               //   placemarks.first.subAdministrativeArea.toString(),
//               //   placemarks.first.locality.toString(),
//               //   placemarks.first.subLocality.toString(),
//               //   placemarks.first.name.toString(),
//               //   placemarks.first.postalCode.toString(),
//               //   placemarks.first.street.toString()
//               // ];

//               // EACH PLACE MUST HAVE A LOCALITY AND A SUBLOCALITY USING CLOSEST DISTANCE IF UNAVAILABLE. In the case of missing sublocality, use the 'Near ...' keyword

//               // print('Latitude: ${cameraPosition!.target.latitude} -- Latitude: ${cameraPosition!.target.latitude}');

//               Set<String> locDetails = {};
//               locDetails.addAll([
//                 "SubLocality: ${placemarks.first.subLocality.toString()}",
//                 placemarks.first.locality.toString(),
//                 placemarks.first.street.toString(),
//                 placemarks.first.name.toString(),
//                 placemarks.first.postalCode.toString(),
//                 placemarks.first.subAdministrativeArea.toString(),
//               ]);

//               double lat1 = cameraPosition!.target.latitude * (pi / 180);
//               double lon1 = cameraPosition!.target.longitude * (pi / 180);
//               List<Marker> refMarkers = [];

//               if (placemarks.first.subLocality == '') {
//                 bool found = false;
//                 double d = 0;
//                 int R = 6378;
//                 double brng = 0;
//                 double lat2;
//                 double lon2;
//                 List<Placemark> refPlacemarks = [];

//                 for (int n = 400; n < 2000; n += 400) {
//                   if (found) {
//                     break;
//                   }
//                   d = n / 1000;
//                   for (int i = 0; i < 360; i += 60) {
//                     brng = i * (pi / 180);
//                     lat2 = asin(sin(lat1) * cos(d / R) +
//                         cos(lat1) * sin(d / R) * cos(brng));
//                     lon2 = lon1 +
//                         atan2(sin(brng) * sin(d / R) * cos(lat1),
//                             cos(d / R) - sin(lat1) * sin(lat2));

//                     lat2 = lat2 * (180 / pi);
//                     lon2 = lon2 * (180 / pi);

//                     refPlacemarks = await placemarkFromCoordinates(lat2, lon2);
//                     if (refPlacemarks.first.subLocality != '') {
//                       refMarkers.add(Marker(
//                         markerId: MarkerId("Optimal Ref Location $lat2 $lon2"),
//                         position: LatLng(lat2, lon2),
//                         icon: BitmapDescriptor.defaultMarker,
//                       ));
//                       found = true;
//                       break;
//                     }
//                   }
//                 }
//               }
//               // double lat2 = asin(
//               //     sin(lat1) * cos(d / R) + cos(lat1) * sin(d / R) * cos(brng));
//               // double lon2 = lon1 +
//               //     atan2(sin(brng) * sin(d / R) * cos(lat1),
//               //         cos(d / R) - sin(lat1) * sin(lat2));

//               // lat2 = lat2 * (180 / pi);
//               // lon2 = lon2 * (180 / pi);

//               locDetails.removeAll({''});

//               setState(() {
//                 location = locDetails.join(', ');
//                 markers = {};
//                 markers.addAll(refMarkers);
//               });
//             },
//           ),

//           Center(
//             //picker image on google map
//             child: Icon(
//               Icons.location_on,
//               color: Colors.blue,
//               size: 50.0,
//             ),
//           ),

//           //search autoconplete input
//           Positioned(
//               //search input bar
//               top: 50,
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