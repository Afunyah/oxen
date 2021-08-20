import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:oxen/screens/loginScreen.dart';
import 'package:oxen/screens/splashScreen.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenWidget(),
    );
  }
}



// // import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// // import 'auth/firebase_user_provider.dart';
// import 'screens/splashScreen.dart';
// import 'flutter_flow/flutter_flow_theme.dart';
// import 'screens/myTasksScreen.dart';
// // import 'my_profile/my_profile_widget.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Stream<TestFirebaseUser> userStream;
//   TestFirebaseUser initialUser;

//   @override
//   void initState() {
//     super.initState();
//     userStream = testFirebaseUserStream()
//       ..listen((user) => initialUser ?? setState(() => initialUser = user));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'test',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: initialUser == null
//           ? Center(
//               child: Builder(
//                 builder: (context) => Image.asset(
//                   'assets/images/todo_0.0_Splash@3x.png',
//                   width: MediaQuery.of(context).size.width / 2,
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//             )
//           : currentUser.loggedIn
//               ? NavBarPage()
//               : SplashScreenWidget(),
//     );
//   }
// }

// class NavBarPage extends StatefulWidget {
//   NavBarPage({Key? key, required this.initialPage}) : super(key: key);

//   final String initialPage;

//   @override
//   _NavBarPageState createState() => _NavBarPageState();
// }

// /// This is the private State class that goes with NavBarPage.
// class _NavBarPageState extends State<NavBarPage> {
//   String _currentPage = 'myTasks';

//   @override
//   void initState() {
//     super.initState();
//     _currentPage = widget.initialPage ?? _currentPage;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final tabs = {
//       'myTasks': MyTasksWidget(),
//       // 'MyProfile': MyProfileWidget(),
//     };
//     return Scaffold(
//       body: tabs[_currentPage],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.playlist_add,
//               color: Color(0xFF9E9E9E),
//               size: 32,
//             ),
//             activeIcon: Icon(
//               Icons.playlist_add,
//               color: FlutterFlowTheme.primaryColor,
//               size: 32,
//             ),
//             label: 'My Tasks',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person_outline,
//               color: Color(0xFF9E9E9E),
//               size: 32,
//             ),
//             activeIcon: Icon(
//               Icons.person_sharp,
//               color: FlutterFlowTheme.primaryColor,
//               size: 32,
//             ),
//             label: 'Home',
//           )
//         ],
//         backgroundColor: FlutterFlowTheme.primaryBlack,
//         currentIndex: tabs.keys.toList().indexOf(_currentPage),
//         selectedItemColor: FlutterFlowTheme.primaryColor,
//         unselectedItemColor: FlutterFlowTheme.tertiaryColor,
//         onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//       ),
//     );
//   }
// }
