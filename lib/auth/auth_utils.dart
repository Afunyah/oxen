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

  try {
    Map<String, String> userAttributes = {};

    SignUpResult res = await Amplify.Auth.signUp(
        username: username,
        password: genericKey,
        options: CognitoSignUpOptions(userAttributes: userAttributes));

    isSignUpComplete = res.isSignUpComplete;
    if (isSignUpComplete) {
      Globals.setPhoneNumber(username);
    }
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignUpComplete;
}

Future<bool> registerCustomer(
    String username, String fName, String lName) async {
  bool isSignUpComplete = false;

  try {
    Customer customer = Customer(
      firstName: fName,
      lastName: lName,
      phoneNumber: username,
      status: '',
    );
    await Amplify.DataStore.save(customer);
  } on DataStoreException catch (e) {
    print(e.message);
  }

  return isSignUpComplete;
}

Future<bool> confirmUserLogin(String code) async {
  bool isSignedIn = false;

  try {
    SignInResult res =
        await Amplify.Auth.confirmSignIn(confirmationValue: code);

    isSignedIn = res.isSignedIn;
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignedIn;
}

Future<bool> userSignOut() async {
  bool isSignedOut = true;

  Globals.setPhoneNumber('');
  Globals.setSignedInStatus(false);

  await Amplify.DataStore.clear();

  try {
    await Amplify.Auth.signOut();
  } on AuthException catch (e) {
    print(e.message);
  }
  return isSignedOut;
}

Future<bool> authUser(String username) async {
  print('Name: $username, Password: $genericKey');
  bool isSignedIn = false;

  // CognitoAuthSession? session = (await Amplify.Auth.fetchAuthSession(
  //         options: CognitoSessionOptions(getAWSCredentials: true)))
  //     as CognitoAuthSession?;
  // print('Identity ID:  ${session.identityId}');

  try {
    SignInResult res = await Amplify.Auth.signIn(
      username: username,
      password: genericKey,
    );

    isSignedIn = res
        .isSignedIn; // I think will always be false since MFA enforced. set state()?
    Globals.setPhoneNumber(username);
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignedIn;
}

Future<bool> checkSession() async {
  bool res = false;

  try {
    AuthUser currentUser = await Amplify.Auth.getCurrentUser();
    AuthSession currentSession = await Amplify.Auth.fetchAuthSession();

    // I don't like setting them here, but I don't want another funcion using auth user and sess
    Globals.setPhoneNumber(currentUser.username);
    Globals.setSignedInStatus(currentSession.isSignedIn);

    print('Current User Details:');
    print(currentUser.toString());
    print(currentUser.userId);
    print(currentUser.username);

    print('Current Session Details:');
    print(currentSession.toString());
    print(currentSession.isSignedIn);

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
  if (Globals.getPhoneNumber() == '') {
    return null;
  }

  List<Customer> userModelList = [];

  userModelList = await Amplify.DataStore.query(Customer.classType,
      where: Customer.PHONENUMBER.eq(Globals.getPhoneNumber()));

  return userModelList.isNotEmpty ? userModelList[0] : null;
}
