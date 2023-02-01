import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  Page3({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Image.asset("assets/images/velo__pic.png"),
          )),
    );
  }
}
