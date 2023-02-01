import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/moto__pic.png",
                  width: 400,
                ),
              ],
            ),
          )),
    );
  }
}
