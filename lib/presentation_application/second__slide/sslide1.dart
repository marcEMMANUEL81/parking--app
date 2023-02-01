import 'package:flutter/material.dart';
import '../../constantes/const.dart';

class sslide1 extends StatelessWidget {
  const sslide1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/img1.png', height: 210),
          const SizedBox(
            height: 40,
          ),
          const Text("Trouver votre parking",
              style: TextStyle(
                fontFamily: 'FuturaPT',
                fontSize: 20,
                color: dashboard__bg__color,
                fontWeight: FontWeight.w900,
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 360,
            child: const Text(
              "Secure park est une application qui vous permet de trouver les parkings les plus proches de vous en un rien de temps afin de vous aider à vous stationner et gagner du temps",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'FuturaPT',
                fontSize: size__commonText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
