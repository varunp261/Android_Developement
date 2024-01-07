import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app_12172023/pages/login_screen.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Carousel(
        showIndicator: false,
        animationDuration: Duration(milliseconds: 600),
        images: [
          Image.asset(
            "lib/assests/sliderscreen_images/basket_slider1.gif",
          ),
          Image.asset(
              "lib/assests/sliderscreen_images/deliveryboy_slider2.gif"),
          Image.asset("lib/assests/sliderscreen_images/payment_slider3.gif"),
        ],
      ),
      // To create the Start Button which takes us to the login page - 1-07-204
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const Center(
                    child: Opacity(
                      opacity: 1.0,
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                      ),
                    ),
                  );
                });
            Timer(
              const Duration(seconds: 3),
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              ),
            );
          },
          label: const Text("Start")),
      // To create the Start Button which takes us to the login page - 1-07-204
    );
  }
}
