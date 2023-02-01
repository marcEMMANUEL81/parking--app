import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constantes/const.dart';

class sslide2 extends StatelessWidget {
  const sslide2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset("assets/videos/secure.json"),
          SizedBox(height: 30),
          Text(
            'Votre véhicule est en sécurité\n avec nous',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w700,
              color: dashboard__bg__color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
