import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/Screens/FifthScreen.dart';
import '../Helpers/Button.dart';

class SecondScreen extends StatefulWidget {
  _SecondScreen createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
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
            top: 50,
            left: 30,
            child: Image.asset('assets/images/lid.png'),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/Coupleeating.png'),
          ),
          SizedBox(height: 45),
              Center(
                child: Text(
                  'Find Your Restaurant',
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
                'Find the best Restaurant near you with best prices and\nthe best food to help you get the best experience.',
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
                child: Text(
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
