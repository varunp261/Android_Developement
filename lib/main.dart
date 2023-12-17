import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app_12172023/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primaryColor: Colors.black),
      home:SplashScreen(),

    );
  }
  
}

