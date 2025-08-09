import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Screens(Splash and front)/FifthScreen.dart';
import '../Screens(Splash and front)/FirstScreen.dart';
import '../Screens(Splash and front)/FourthScreen.dart';
import '../Screens(Splash and front)/SecondScreen.dart';
import '../Screens(Splash and front)/ThirdScreen.dart';

class Merge extends StatefulWidget {
  _Merge createState() => _Merge();
}

class _Merge extends State<Merge> {
  final LiquidController _liquidController = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LiquidSwipe(
            liquidController: _liquidController,
            enableLoop: false,
            onPageChangeCallback: (index) {
              setState(() {
                currentPage = index;
              });
            },
            pages: <Widget>[
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
              FourthScreen(),
              FifthScreen(),
            ],
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),

          // Smooth Page Indicator at bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 5, // total number of screens
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.5),
                dotHeight: 8,
                dotWidth: 8,
                spacing: 6,
              ),
              onDotClicked: (index) {
                _liquidController.jumpToPage(page: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
