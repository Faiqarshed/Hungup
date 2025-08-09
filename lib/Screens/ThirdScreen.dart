import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Helpers/Button.dart';

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
            top: 55,
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
            bottom: 210,
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
              left: MediaQuery.of(context).size.width/2 -26,
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
