import 'package:flutter/material.dart';
import 'package:grocery_app_12172023/pages/slider_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assests/loginscreen_images/login.jpg", height: 245),
              SizedBox(height: 50,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_rounded),

                      ),
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),

                      ),
                    ),
                    SizedBox(height: 10,),

                    Align(alignment: Alignment.bottomRight,child: TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SliderScreen(),

                              ));
                        },
                        child:Text("Forgot Password",style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFDB3022),
                          fontWeight: FontWeight.w600
                        ),)
                    ),),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
