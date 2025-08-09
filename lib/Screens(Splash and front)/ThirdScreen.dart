import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Helpers/Button.dart';
import 'FifthScreen.dart';

class ThirdScreen extends StatefulWidget {
  _ThirdScreen createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Android background
        statusBarIconBrightness: Brightness.dark, // Android icons
        statusBarBrightness: Brightness.light, // iOS icons
      ),
    );
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 330,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/burger.png'),
          ),
          SizedBox(height: 45),
          Center(
            child: Text(
              'Pick your Food',
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
                  'Pick your favorite food from amazing restaurants near\nyou, which provide amazing variety of foods near you.',
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
