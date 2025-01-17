import 'package:flutter/material.dart';
import 'package:oxen/screens/init_page/init_page.dart';
import 'package:oxen/screens/request_delivery_page/end_location_page.dart';
import 'package:oxen/screens/request_delivery_page/start_location_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oxen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreenPageWidget(),
      home: InitPageWidget(),
      routes: {
        StartLocationPageWidget.routeName: (context) =>
            const StartLocationPageWidget(),
        EndLocationPageWidget.routeName: (context) =>
            const EndLocationPageWidget()
      },
    );
  }
}
