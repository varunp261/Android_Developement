import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app_12172023/pages/slider_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SliderScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 205,
                child: Image.asset("lib/assests/splashscreen_images/logo.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                child:
                    Image.asset("lib/assests/splashscreen_images/loading.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
