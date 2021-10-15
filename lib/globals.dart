import 'dart:async';

import 'package:amplify_flutter/amplify.dart';
import 'package:oxen/models/ModelProvider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Globals {
  static bool _isSignedIn = false;
  static String _phoneNumber = '';
  static String _userModelID = '';
  // static String _firstName = '';
  // static String _lastName = '';

  static FlutterSecureStorage _secStorage = new FlutterSecureStorage();

  static void setSignedInStatus(bool status) {
    _isSignedIn = status;
  }

  static bool getSignedInStatus() {
    return _isSignedIn;
  }

  static void setPhoneNumber(String pNum) {
    _phoneNumber = pNum;
  }

  static String getPhoneNumber() {
    return _phoneNumber;
  }

  // static void setLastName(String lName) {
  //   _lastName = lName;
  // }

  // static String getLastName() {
  //   return _lastName;
  // }

  // static void setFirstName(String fName) {
  //   _firstName = fName;
  // }

  // static String getFirstName() {
  //   return _firstName;
  // }

  static String getUserModelID() {
    return _userModelID;
  }

  static void setUserModelID(String newID) {
    _userModelID = newID;
  }

  static void incrementLoginAttempts() async {
    await _secStorage.write(
        key: 'sCSatmps',
        value: (int.parse(await getLoginAttempts()) + 1).toString());
  }

  static Future<String> getLoginAttempts() async {
    String? val = await _secStorage.read(key: 'sCSatmps');
    return (val == null) ? '0' : val;
  }

  static void clearLoginAttempts() async {
    await _secStorage.write(key: 'sCSatmps', value: '0');
  }

  // static void pullCloudAndExecute(Function toExec) async {
  //   await Amplify.DataStore.query(GenericUser.classType).then((value) {
  //     print("Performed Dummy Query");
  //   });

  //   StreamSubscription dsHub =
  //       Amplify.Hub.listen([HubChannel.DataStore], (hubEvent) {
  //     print("HubEvent is ${hubEvent.eventName}");
  //   });

  //   dsHub.onData((data) async {
  //     print(data.eventName);
  //     if (data.eventName == 'ready') {
  //       print("DataStore READY (custom)");
  //       toExec();
  //       await dsHub.cancel();
  //     }
  //   });
  // }

  static Future<void> pullCloud() async {
    await Amplify.DataStore.stop();
    await Amplify.DataStore.start();
    print('Datastore stopped and started - CUSTOM');
    await Amplify.DataStore.query(GenericUser.classType).then((value) {
      print("Performed Dummy Query");
    });
  }
}
