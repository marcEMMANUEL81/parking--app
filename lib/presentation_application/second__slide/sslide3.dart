import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constantes/const.dart';

class sslide3 extends StatelessWidget {
  const sslide3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset("assets/videos/map.json", height: 400),
          SizedBox(height: 30),
          Text(
            'Trouvez rapidement votre parking',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w700,
              color: dashboard__bg__color,
            ),
          ),
        ],
      ),
    );
  }
}
