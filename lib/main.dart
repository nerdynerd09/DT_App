import 'package:dt_app/Academy/academy.dart';
import 'package:dt_app/Test/testpage.dart';
import 'package:dt_app/Tracker/tracker.dart';
import 'package:dt_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'About_Us/aboutUs.dart';
import 'welcome.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => WelcomePage(),
      "/trackerScreen": (context) => TrackerPage(),
      "/academyScreen": (context) => AcademyPage(),
      "/aboutUs": (context) => AboutUs(),
      // "/testScreen": (context) => TestPage(),
      "/testScreen": (context) => TrackerPage(),
    });
  }
}
