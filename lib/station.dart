import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/history/client.dart';

int number = 1;

class station extends StatelessWidget {
  station({Key key}) : super(key: key);

  final List historyELements = [
    {
      'heure': '07h40',
      'nom': 'Brou',
      'prenom': 'Yao',
      'immatriculation': '1234AB56',
      'numero': '+225 0797674576',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h42',
      'nom': 'Yapi',
      'prenom': 'Chris',
      'immatriculation': '1234AB56',
      'numero': '+225 0143263244',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h45',
      'nom': 'Blé',
      'prenom': 'baka',
      'immatriculation': '1234AB56',
      'numero': '+225 0271429907',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h47',
      'nom': 'Kouamé',
      'prenom': 'Christian',
      'immatriculation': '1234AB56',
      'numero': '+225 0393485028',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h51',
      'nom': 'Adou',
      'prenom': 'david',
      'immatriculation': '1234AB56',
      'numero': '+225 0430979620',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h59',
      'nom': 'Kamagaté',
      'prenom': 'Habib',
      'immatriculation': '1234AB56',
      'numero': '+225 0585040488',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '08h10',
      'nom': 'Béké',
      'prenom': 'Ogo',
      'immatriculation': '1234AB56',
      'numero': '+225 0671696989',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h40',
      'nom': 'Brou',
      'prenom': 'Yao',
      'immatriculation': '1234AB56',
      'numero': '+225 0721862966',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h42',
      'nom': 'Yapi',
      'prenom': 'Chris',
      'immatriculation': '1234AB56',
      'numero': '+225 0826072731',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h45',
      'nom': 'Blé',
      'prenom': 'baka',
      'immatriculation': '1234AB56',
      'numero': '+225 0941447804',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h47',
      'nom': 'Kouamé',
      'prenom': 'C.',
      'immatriculation': '1234AB56',
      'numero': '+225 0162725589',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h51',
      'nom': 'Adou',
      'prenom': 'david',
      'immatriculation': '1234AB56',
      'numero': '+225 020797674576',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '07h59',
      'nom': 'Kamagaté',
      'prenom': 'H.',
      'immatriculation': '1234AB56',
      'numero': '+225 0797674576',
      'place': 'Rangée 1 Place A3'
    },
    {
      'heure': '08h10',
      'nom': 'Béké',
      'prenom': 'Ogo',
      'immatriculation': '1234AB56',
      'numero': '+225 0797674576',
      'place': 'Rangée 1 Place A3'
    },
  ];

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
            'Stationnement en cours',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nom du client',
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        fontSize: size__commonText,
                        fontWeight: FontWeight.w800,
                        color: dashboard__bg__color2,
                      ),
                    ),
                    Text(
                      'Heure',
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        fontSize: size__commonText,
                        fontWeight: FontWeight.w800,
                        color: dashboard__bg__color2,
                      ),
                    ),
                    Text(
                      'Immatriculation',
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        fontSize: size__commonText,
                        fontWeight: FontWeight.w800,
                        color: dashboard__bg__color2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: historyELements.map((event) {
                    return Container(
                      padding: EdgeInsets.all(
                        15,
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: dashboard__bg__color2),
                      child: InkWell(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Client(
                                      name: event['nom'],
                                      prenom: event['prenom'],
                                      heure: event['heure'],
                                      immatriculation: event['immatriculation'],
                                      numero: event['numero'],
                                      place: event['place'],
                                    )),
                          );
                        }),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  (number++).toString() + '. ',
                                  style: TextStyle(
                                    fontFamily: 'FuturaPT',
                                    fontSize: size__commonText,
                                    fontWeight: FontWeight.w800,
                                    color: secondary__color,
                                  ),
                                ),
                                Text(
                                  event['nom'],
                                  style: TextStyle(
                                    fontFamily: 'FuturaPT',
                                    fontSize: size__commonText,
                                    fontWeight: FontWeight.w800,
                                    color: secondary__color,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              event['heure'],
                              style: TextStyle(
                                fontFamily: 'FuturaPT',
                                fontSize: size__commonText,
                                fontWeight: FontWeight.w800,
                                color: secondary__color,
                              ),
                            ),
                            Text(
                              event['immatriculation'],
                              style: TextStyle(
                                fontFamily: 'FuturaPT',
                                fontSize: size__commonText,
                                fontWeight: FontWeight.w500,
                                color: secondary__color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
