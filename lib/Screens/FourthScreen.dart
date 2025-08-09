import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Helpers/Button.dart';

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
            bottom: 210,
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
                  child: Button(),
                ),
                SizedBox(height: 20),
                Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom:MediaQuery.of(context).size.height*0.08,
              left: MediaQuery.of(context).size.width/2 -32,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(height: 14, width: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(height: 14, width: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,

                    ),
                  ),
                  SizedBox(width: 5),
                  Container(height: 14, width: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(height: 14, width: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
