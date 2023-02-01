import 'package:flutter/material.dart';

class Pic1 extends StatelessWidget {
  Pic1({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/img6.jpg",
              height: 300,
              width: 360,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}
