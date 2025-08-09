import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Helpers/Button.dart';
import 'FifthScreen.dart';

class FourthScreen extends StatefulWidget {
  _FourthScreen createState() => _FourthScreen();
}

class _FourthScreen extends State<FourthScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/Courier.png'),
          ),
          SizedBox(height: 45),
          Center(
            child: Text(
              'Get Food Delivered',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            bottom: MediaQuery.of(context).size.height/2 - 240,
            left: 0,
            right: 0,
            child:
            Column(
              children: [
                Text(
                  'Get your food delivered from the nearest restaurant, in the\nshortest time possible',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 83),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Button(text: 'Login', color: Theme.of(context).primaryColor),
                ),
                SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FifthScreen()),
                );
              },
              child:
                Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
