import 'package:flutter/material.dart';
class Screen_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(
        child: Text('Welcome',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),),
      )
    );
  }
}
