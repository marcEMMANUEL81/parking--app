import 'package:flutter/material.dart';
import 'package:flutter_gmaps/part1/inscription.dart';
import 'package:lottie/lottie.dart';

import '../../constantes/const.dart';

class slide1 extends StatelessWidget {
  const slide1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset("assets/videos/person.json"),
          SizedBox(height: 30),
          Text(
            'Usager',
            style: TextStyle(
              fontSize: size__bigText,
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w900,
              color: secondary__color,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            width: 360,
            decoration: BoxDecoration(
              color: dashboard__bg__color2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => inscription(),
                  ),
                );
              },
              child: Text(
                'Continuer',
                style: TextStyle(
                  fontSize: size__commonText,
                  fontFamily: 'FuturaPT',
                  fontWeight: FontWeight.w900,
                  color: secondary__color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
