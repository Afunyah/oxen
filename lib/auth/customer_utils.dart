import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:oxen/flutter_flow/flutter_flow_util.dart';
import 'package:oxen/globals.dart';
import 'package:oxen/models/ModelProvider.dart';

// return a list of drivers(not Driver objects) maybe
Future<bool> requestDelivery(String customerID, String startPoint,
    String endPoint, String pickUpTime) async {
      Delivery? delivery;
  try {
    Delivery delivery = Delivery(
        customerID: customerID,
        riderID: '',
        vehicleID: '',
        startPoint: startPoint,
        endPoint: endPoint,
        pickUpTime: TemporalDateTime(DateTime.now()),
        startTime: TemporalDateTime(DateTime.now()),
        endTime: TemporalDateTime(DateTime.now()),
        cost: 0.00,
        status: 'searching');
        await Amplify.DataStore.save(delivery);
  } catch (e) {
    print(e);
    return false;
  }

  if(delivery != null){
    findDrivers(delivery); // Store res and pass to next func
    // Widget builder for list maybe in parseVicinityDrivers function?
  }
  else{
    return false;
  }
  
  return true;
}

// Return list of Driver Objects
Future<bool> findDrivers(Delivery delivery) async {
  // Geolocation stuff here
  // And then get the list of driver objects
  return true;
}


// Button press to call requestDelivery function.
// Create partial delivery object and then call findDrivers function
// Get the nearest drivers in a Drivers objects list
// -> But i want the main request delivery function to return a parsed list so we can easily push a page from the request delivery page

// call parseVicinity drivers? no
// return list of Driver objects returned by find drivers

// In the main page, pass the list of driver objects to the next page which will have a widget builder for displaying the results

// Then the user can choose a driver, sends a request to accept or decline
// If accepts, refill the delivery obj with the relevant details and continue with the next page
// If rejects, remove driver from the list and continue the selection process
