import 'package:flutter/material.dart';
import 'package:foodapp/LiquidSwipe/merge.dart';
import 'package:google_fonts/google_fonts.dart';


class Splash extends StatefulWidget{
  _Splash createState()=> _Splash();
}



class _Splash extends State<Splash>{
  bool _big = false;
  int width = 100;
  int height = 100;
  bool _lowerOpacity = false;

  void initState(){
    super.initState();
    _big = false;
    wait();
  }

  void dispose(){
    super.dispose();
    _big = false;
  }

  void wait() async {
    await Future.delayed(Duration(milliseconds: 3000));
    setState(() {
      _big = true;
    });
    wait2();
  }

  void wait2() async{
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Merge()));
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: AnimatedScale(
      scale: _big ? 8 : 3,
    duration: Duration(seconds: 3),
    child:
        AnimatedOpacity(
            opacity: _big ? 0 : 1, duration: Duration(seconds: 2),
        child:
    Text(
          'Hungup',
          style: GoogleFonts.sarina(
            color: Colors.white,

    ),
      ),
      ),
    ),
      ),
    );
  }
}