import 'package:flutter/material.dart';

class Button extends StatelessWidget{

  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        )
        ),
        onPressed: (){},
        child: Text(
          'Login',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        )
    );
  }
}