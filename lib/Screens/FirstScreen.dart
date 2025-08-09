import 'package:flutter/material.dart';
import '../Helpers/Button.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> with SingleTickerProviderStateMixin {

  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/burger.jpg'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Stack(
          children: [
            // Centered text
            Positioned(
              top: (MediaQuery.of(context).size.height)/2-90,
              left: 20,
              right: 20,
              child: Text(
                'Your Next Meal\nis Just a\nTap Away!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth *0.12,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 1,
                ),
              ),
            ),

            Positioned(
              top: (MediaQuery.of(context).size.height)/2 + 154,
              left: 20,
              right: 20,
              child: Button(),
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
                          color: Theme.of(context).primaryColor,
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
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
