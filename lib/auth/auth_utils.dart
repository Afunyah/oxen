import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:oxen/globals.dart';
import 'package:oxen/models/ModelProvider.dart';

String genericKey = 'oxen_gen_key_8181220';

Future<bool> registerUser(String username) async {
  print('Name: $username, Password: $genericKey');
  bool isSignUpComplete = false;

  Globals.setPhoneNumber(username);

  try {
    Map<String, String> userAttributes = {};

    SignUpResult res = await Amplify.Auth.signUp(
        username: username,
        password: genericKey,
        options: CognitoSignUpOptions(userAttributes: userAttributes));

    isSignUpComplete = res.isSignUpComplete;
  } on UsernameExistsException catch (e) {
    Customer? customerModel = await pullCustomerModel();
    if (customerModel != null) {
      print('Account already exists');
    } else {
      isSignUpComplete = true;
    }
  } on AuthException catch (e) {
    print(e.message);
  }

  if (!isSignUpComplete) {
    Globals.setPhoneNumber('');
  }

  return isSignUpComplete;
}

Future<bool> registerCustomer(
    String username, String fName, String lName) async {
  try {
    Customer customer = Customer(
      firstName: fName,
      lastName: lName,
      phoneNumber: username,
      status: 'f',
    );
    await Amplify.DataStore.save(customer);
  } on DataStoreException catch (e) {
    print(e.message);
    return false;
  }

  return true;
}

Future<bool> confirmUserLogin(String code) async {
  bool isSignedIn = false;

  try {
    SignInResult res =
        await Amplify.Auth.confirmSignIn(confirmationValue: code);

    isSignedIn = res.isSignedIn;
    if (isSignedIn) {
      Globals.clearLoginAttempts();
    }
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignedIn;
}

Future<bool> userSignOut() async {
  try {
    await Amplify.Auth.signOut();
    Globals.setPhoneNumber('');
    Globals.setUserModelID('');
    Globals.setSignedInStatus(false);

    await Amplify.DataStore.stop();
    await Amplify.DataStore.clear();
    await Amplify.DataStore.start();
  } on AuthException catch (e) {
    print(e.message);
    return false;
  }
  return true;
}

Future<bool> authUser(String username) async {
  print('Name: $username, Password: $genericKey');

  Globals.incrementLoginAttempts(); //cleared after sign in confirmed
  print('Login Attempts : ' + await Globals.getLoginAttempts());

  try {
    SignInResult res = await Amplify.Auth.signIn(
      username: username,
      password: genericKey,
      options: CognitoSignInOptions(
          clientMetadata: {'loginAttempts': await Globals.getLoginAttempts()}),
    );

    // isSignedIn = res
    //     .isSignedIn; // I think will always be false since MFA enforced. set state()?
    Globals.setPhoneNumber(username);
    print(username);
  } on AuthException catch (e) {
    print(e.message);
    return false;
  }

  return true;
}

Future<bool> checkSession() async {
  bool res = false;

  try {
    AuthUser currentUser = await Amplify.Auth.getCurrentUser();
    AuthSession currentSession = await Amplify.Auth.fetchAuthSession();
    List<AuthUserAttribute> userAttributes = await Amplify.Auth.fetchUserAttributes();

    // I don't like setting them here, but I don't want another funcion using auth user and sess
    // Globals.setPhoneNumber(currentUser.username);
    // Globals.setSignedInStatus(currentSession.isSignedIn);

    // print('Current User Details:');
    // print(currentUser);
    // print(currentUser.userId);
    // print(currentUser.username.toString());

    print('Current User Attributes:');
    
    Map<String, dynamic> attrMapp = {};
    userAttributes.forEach((elem)=>attrMapp[elem.userAttributeKey]=elem.value);
    print(attrMapp);

    print('Current Session Details:');
    print(currentSession.toString());
    print(currentSession.isSignedIn);

    // I don't like setting them here, but I don't want another funcion using auth user and sess
    Globals.setPhoneNumber(attrMapp['phone_number']);
    Globals.setSignedInStatus(currentSession.isSignedIn);

    res = currentSession.isSignedIn;
  }
  // Does not work even if I remove last catch. Prints out whole err log
  // signout on exception?
  on SignedOutException {
    print('Session logging null - no user signed in');
    return res;
  } on NotAuthorizedException {
    print('Session logging null - no user signed in');
    return res;
  } catch (e) {
    print(e);
  }

  return res;
}

Future<Customer?> pullCustomerModel() async {
  print('Pulling Customer Model');
  if (Globals.getPhoneNumber() == '') {
    print('No Global Phone Number');
    return null;
  }

  await Globals.pullCloud();

  List<Customer> userModelList = [];

  userModelList = await Amplify.DataStore.query(Customer.classType,
      where: Customer.PHONENUMBER.eq(Globals.getPhoneNumber()));

      

  if (userModelList.isNotEmpty) {
    Globals.setUserModelID(userModelList[0].id);
    return userModelList[0];
  }
  return null;

}
