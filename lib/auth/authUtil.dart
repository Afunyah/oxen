import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

import '../amplifyconfiguration.dart';

String genericKey = 'oxen_gen_key_8181220';

void configureAmplify() async {
  // Add Pinpoint and Cognito Plugins, or any other plugins you want to use
  AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
  await Amplify.addPlugins([authPlugin]);

  // Once Plugins are added, configure Amplify. Note: Amplify can only be configured once.
  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    print(
        "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
  }
}

Future<bool> regUser(String username) async {
  print('Name: $username, Password: $genericKey');
  bool isSignUpComplete = false;

  try {
    Map<String, String> userAttributes = {};

    SignUpResult res = await Amplify.Auth.signUp(
        username: username,
        password: genericKey,
        options: CognitoSignUpOptions(userAttributes: userAttributes));

    isSignUpComplete = res.isSignUpComplete;
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignUpComplete;
}

Future<bool> verifyCode(String username, String code) async {
  bool isSignUpComplete = false;
  try {
    SignUpResult res = await Amplify.Auth.confirmSignUp(
        username: username, confirmationCode: code);

    isSignUpComplete = res.isSignUpComplete;
  } on AuthException catch (e) {
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

  try {
    SignOutResult res = await Amplify.Auth.signOut();
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

  // print('Access key: ${session!.credentials!.awsAccessKey}');
  // print('Secret Key: ${session.credentials!.awsSecretKey}');
  // print('Identity ID:  ${session.identityId}');
  // print('User Pool tokens: ${session.userPoolTokens!.accessToken}');
  // print('User Pool tokens: ${session.userPoolTokens!.idToken}');

  try {
    SignInResult res = await Amplify.Auth.signIn(
      username: username,
      password: genericKey,
    );

    isSignedIn = res.isSignedIn;
  } on AuthException catch (e) {
    print(e.message);
  }

  return isSignedIn;
}

Future<bool> recoverPassword(String name) async {
  bool isPasswordReset = false;

  try {
    ResetPasswordResult res = await Amplify.Auth.resetPassword(
      username: name,
    );

    isPasswordReset = res.isPasswordReset;
  } on AmplifyException catch (e) {
    print(e);
  }

  return isPasswordReset;
}
