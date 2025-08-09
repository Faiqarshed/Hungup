import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Helpers/ArcClipper.dart';
import '../Helpers/Button.dart';
import 'package:morphable_shape/morphable_shape.dart';

class FifthScreen extends StatefulWidget {
  _FifthScreen createState() => _FifthScreen();
}

class _FifthScreen extends State<FifthScreen> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(
            scale: 1.4,
            child: Transform.rotate(
              angle: pi * 6 + 50,
              child: ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/pizza.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Center(
              child: Text(
                  ' ',
                style: TextStyle(
                    fontFamily: 'Satoshi',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
          ),
        ],
      ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height/2*0.6,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              )

            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height/2*0.28,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:
              Column(
            children: [
              Button(text: 'Login', color: Theme.of(context).primaryColor),
              SizedBox(height: 20),
              Button(text: 'Sign up', color: Colors.black.withOpacity(0.8),
              ),
            ],
          ),
          ),
          ),
      ],
    ),
    );
  }
}
