import 'package:oxen/auth/auth_utils.dart';

class Globals {
  static String _role = '';
  static bool _isSignedIn = false;
  static String _phoneNumber = '';
  // static String _firstName = '';
  // static String _lastName = '';

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
}
