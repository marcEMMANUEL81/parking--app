import 'package:flutter/material.dart';
import '../constantes/const.dart';

final List infoClient = [
  {
    'nom': 'Kouamé',
    'prenom': 'Christian',
    'numero': '0797674576',
    'Immatriculation': '1234AB56',
    'Place': 'Rangée 1 Place A3',
    'Temps': '01h55min',
  },
];

// ignore: must_be_immutable
class client2 extends StatelessWidget {
  const client2({Key key}) : super(key: key);

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
            'Client',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Center(
                child: Image.asset(
                  'assets/images/identity-card.png',
                  height: 250,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: dashboard__bg__color2,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: Column(
                  children: infoClient.map((info) {
                    return Container(
                      padding: EdgeInsets.all(
                        20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nom',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['nom'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Prenom',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['prenom'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Numero',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['numero'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Immatriculaion',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['Immatriculation'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Place occupée',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w600,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['Place'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Temps passé',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w600,
                                  color: color__text2,
                                ),
                              ),
                              Text(
                                info['Temps'],
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  fontSize: size__commonText,
                                  fontWeight: FontWeight.w800,
                                  color: secondary__color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
