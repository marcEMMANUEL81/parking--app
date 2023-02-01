// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              Container(
                width: 400,
                child: Text(
                  "Secure Park",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins',
                      color: Color.fromARGB(255, 64, 64, 64)),
                ),
              )
            ]),
      ),
    ));
  }
}
