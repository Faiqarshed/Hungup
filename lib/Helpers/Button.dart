import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String text;
  final Color color;
  Button({required this.text, required this.color});

  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        )
        ),
        onPressed: (){},
        child: Text(
          '$text',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        )
    );
  }
}