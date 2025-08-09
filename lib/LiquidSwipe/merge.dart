import 'package:flutter/material.dart';
import 'package:foodapp/Screens/FirstScreen.dart';
import 'package:foodapp/Screens/FourthScreen.dart';
import 'package:foodapp/Screens/SecondScreen.dart';
import 'package:foodapp/Screens/ThirdScreen.dart';
import '../Helpers/Button.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Merge extends StatefulWidget {
  _Merge createState() => _Merge();
}

class _Merge extends State<Merge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        enableLoop: false,
        pages: <Widget>[
          FirstScreen(),
          SecondScreen(),
          ThirdScreen(),
          FourthScreen(),
        ],
        //enableSideReveal: true, // allows sliding with icon
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
