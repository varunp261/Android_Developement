import 'package:flutter/material.dart';
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
      body:Carousel(
        showIndicator: false,
        animationDuration: Duration(milliseconds: 600),
        images: [
          Image.asset("lib/assests/sliderscreen_images/basket_slider1.gif",),
          Image.asset("lib/assests/sliderscreen_images/deliveryboy_slider2.gif"),
          Image.asset("lib/assests/sliderscreen_images/payment_slider3.gif"),
        ],
      ) ,
    );
  }
}
