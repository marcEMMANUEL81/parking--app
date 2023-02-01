import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  "assets/images/car__pic.png",
                  width: 400,
                ),
              ],
            ),
          )),
    );
  }
}
