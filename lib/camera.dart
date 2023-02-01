import 'package:flutter/material.dart';
import 'constantes/const.dart';

class camera extends StatelessWidget {
  const camera({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dashboard__bg__color,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: secondary__color,
            ),
          ),
          backgroundColor: dashboard__bg__color,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Caméras',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: dashboard__bg__color2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Pas de caméra active',
              style: TextStyle(
                fontFamily: 'FuturaPT',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: secondary__color,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
