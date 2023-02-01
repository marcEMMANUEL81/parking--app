import 'package:flutter/material.dart';
import '../constantes/const.dart';

// ignore: must_be_immutable
class history extends StatelessWidget {
  history({Key key}) : super(key: key);

  final List historyELements = [
    {'heure': '07h40', 'evenement': 'Entree dans le parking'},
    {'heure': '07h42', 'evenement': 'Mauvais Stationnement'},
    {'heure': '07h45', 'evenement': 'Paiement effectué : 2000 F'},
    {'heure': '07h50', 'evenement': 'Entrée dans le parking'},
    {'heure': '07h51', 'evenement': 'Entree dans le parking'},
    {'heure': '07h40', 'evenement': 'Paiement effectué : 1000 F'},
    {'heure': '07h40', 'evenement': 'Mauvais Stationnement'},
    {'heure': '07h42', 'evenement': 'Sortie du parking'},
    {'heure': '07h45', 'evenement': 'Paiement effectué'},
    {'heure': '07h40', 'evenement': 'Entree dans le parking'},
    {'heure': '07h42', 'evenement': 'Sortie du parking'},
    {'heure': '07h45', 'evenement': 'Paiement effectué : 2000 F'},
    {'heure': '07h50', 'evenement': 'Entrée dans le parking'},
    {'heure': '07h51', 'evenement': 'Entree dans le parking'},
    {'heure': '07h40', 'evenement': 'Paiement effectué : 1000 F'},
    {'heure': '07h40', 'evenement': 'Mauvais Stationnement'},
    {'heure': '07h42', 'evenement': 'Sortie du parking'},
    {'heure': '07h45', 'evenement': 'Paiement effectué'},
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
            'Evênement',
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
                      print('cliqué');
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          event['evenement'],
                          style: TextStyle(
                            fontFamily: 'FuturaPT',
                            fontSize: size__commonText,
                            fontWeight: FontWeight.w800,
                            color: secondary__color,
                          ),
                        ),
                        Text(
                          event['heure'],
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
          ),
        ),
      ),
    );
  }
}
