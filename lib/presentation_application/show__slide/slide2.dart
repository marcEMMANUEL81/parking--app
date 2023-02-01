import 'package:flutter/material.dart';
import 'package:flutter_gmaps/part1/Connexion.dart';
import 'package:flutter_gmaps/part1/ins2.dart';
import 'package:lottie/lottie.dart';
import '../../co2.dart';
import '../../constantes/const.dart';

class slide2 extends StatelessWidget {
  const slide2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset("assets/videos/sure.json"),
          SizedBox(height: 30),
          Text(
            'Gerant de parking',
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
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => co2()),
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
