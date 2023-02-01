import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/CreationParking/ParkingArea.dart';
import 'package:flutter_gmaps/camera.dart';
import 'package:flutter_gmaps/history/history.dart';
import 'package:flutter_gmaps/recettes.dart';
import 'package:flutter_gmaps/station.dart';
import '../constantes/const.dart';
import 'exemple.dart';

String selectedValue = 'Parking 1';

final List parkings = [
  {
    'nom': 'Parking CIWA',
    'pos': 'Plateau',
    'nbPlaces': 50,
    'recette': 250000,
  },
  {
    'nom': 'Parking KAWA',
    'pos': 'Plateau',
    'nbPlaces': 60,
    'recette': 350000,
  },
  {
    'nom': 'Parking bnetd',
    'pos': 'Plateau',
    'nbPlaces': 70,
    'recette': 450000,
  },
];

// ignore: must_be_immutable
class dashboard extends StatefulWidget {
  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dashboard__bg__color,
        appBar: AppBar(
          backgroundColor: dashboard__bg__color,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Dashboard',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(
                  20,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/images/managerParking.jpeg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Antonie le Gérant',
                                  style: TextStyle(
                                    color: secondary__color,
                                    fontFamily: 'FuturaPT',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              selectedValue == 'Parking 1'
                                  ? Text(
                                      parkings[0]['recette'].toString(),
                                      style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontFamily: 'FuturaPT',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                      ),
                                    )
                                  : selectedValue == 'Parking 2'
                                      ? Text(
                                          parkings[1]['recette'].toString(),
                                          style: TextStyle(
                                            color: Colors.yellowAccent,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                          ),
                                        )
                                      : Text(
                                          parkings[2]['recette'].toString(),
                                          style: TextStyle(
                                            color: Colors.yellowAccent,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                          ),
                                        ),
                              SizedBox(
                                width: 68,
                                child: Text(
                                  'Solde Actuel',
                                  style: TextStyle(
                                    color: secondary__color,
                                    fontFamily: 'FuturaPT',
                                    fontSize: size__littleText,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 180,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: dashboard__bg__color2,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Chercher ici ...",
                                  hintStyle: TextStyle(
                                    fontFamily: 'FuturaPT',
                                    fontSize: size__commonText,
                                    color: secondary__color,
                                  ),
                                ),
                                style: TextStyle(color: secondary__color),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: primary__color,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Icon(
                                Icons.search_rounded,
                                color: secondary__color,
                              ),
                            ),
                          ],
                        ),
                        DropdownButton<String>(
                          value: selectedValue,
                          dropdownColor: dashboard__bg__color2,
                          items: <String>['Parking 1', 'Parking 2', 'Parking 3']
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: secondary__color,
                                  fontFamily: 'FuturaPT',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(() {
                              selectedValue = newValue;
                              DoughnutChartExample();
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            color: dashboard__bg__color2,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 200,
                                child: selectedValue == 'Parking 1'
                                    ? Column(
                                        children: [
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              parkings[0]['nom'],
                                              style: TextStyle(
                                                color: secondary__color,
                                                fontFamily: 'FuturaPT',
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              parkings[0]['pos'],
                                              style: TextStyle(
                                                color: color__text2,
                                                fontFamily: 'FuturaPT',
                                                fontSize: size__commonText,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              parkings[0]['nbPlaces']
                                                      .toString() +
                                                  ' Places',
                                              style: TextStyle(
                                                color: Colors.yellow,
                                                fontFamily: 'FuturaPT',
                                                fontWeight: FontWeight.w800,
                                                fontSize: size__commonText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : selectedValue == 'Parking 2'
                                        ? Column(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[1]['nom'],
                                                  style: TextStyle(
                                                    color: secondary__color,
                                                    fontFamily: 'FuturaPT',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[1]['pos'],
                                                  style: TextStyle(
                                                    color: color__text2,
                                                    fontFamily: 'FuturaPT',
                                                    fontSize: size__commonText,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[1]['nbPlaces']
                                                          .toString() +
                                                      ' Places',
                                                  style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontFamily: 'FuturaPT',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: size__commonText,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[2]['nom'],
                                                  style: TextStyle(
                                                    color: secondary__color,
                                                    fontFamily: 'FuturaPT',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[2]['pos'],
                                                  style: TextStyle(
                                                    color: color__text2,
                                                    fontFamily: 'FuturaPT',
                                                    fontSize: size__commonText,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  parkings[2]['nbPlaces']
                                                          .toString() +
                                                      ' Places',
                                                  style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontFamily: 'FuturaPT',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: size__commonText,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            color: dashboard__bg__color2,
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  10,
                                ),
                                child: Text(
                                  'Gestion des places',
                                  style: TextStyle(
                                    color: secondary__color,
                                    fontFamily: 'FuturaPT',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: primary__color,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ParkingArea()),
                                    );
                                  },
                                  child: Text(
                                    'Gérer',
                                    style: TextStyle(
                                      color: secondary__color,
                                      fontSize: size__commonText,
                                      fontFamily: 'FuturaPT',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 400,
                      width: 400,
                      child: DoughnutChartExample(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: dashboard__bg__color2,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => station()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Voir les stationnements en cours',
                              style: TextStyle(
                                color: secondary__color,
                                fontSize: size__commonText,
                                fontFamily: 'FuturaPT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.visibility_rounded,
                              color: secondary__color,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: dashboard__bg__color2,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => history()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Evênements du parking',
                              style: TextStyle(
                                color: secondary__color,
                                fontSize: size__commonText,
                                fontFamily: 'FuturaPT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.videocam_circle_fill,
                              color: secondary__color,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: dashboard__bg__color2,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => camera(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Accéder aux cameras du parking',
                              style: TextStyle(
                                color: secondary__color,
                                fontSize: size__commonText,
                                fontFamily: 'FuturaPT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.visibility,
                              color: secondary__color,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: dashboard__bg__color2,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Recettes(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Voir les recettes',
                              style: TextStyle(
                                color: secondary__color,
                                fontSize: size__commonText,
                                fontFamily: 'FuturaPT',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.visibility,
                              color: secondary__color,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
