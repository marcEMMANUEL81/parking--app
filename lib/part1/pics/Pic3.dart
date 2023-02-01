import 'package:flutter/material.dart';

class Pic3 extends StatelessWidget {
  Pic3({key}) : super(key: key);

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
                "assets/images/img7.jpg",
                height: 300,
                width: 360,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
