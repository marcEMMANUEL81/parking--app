import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/part1/buy.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:async';
import '../espaceClient.dart';
import '../map.dart';
import '../part1/Parkings.dart';

bool validator = true;

class ticket extends StatefulWidget {
  ticket({Key key}) : super(key: key);

  @override
  State<ticket> createState() => _ticketState();
}

class _ticketState extends State<ticket> {
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
            'Ticket de stationnement',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: validator == false
            ? Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: dashboard__bg__color2,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Text(
                    'Pas de ticket actif',
                    style: TextStyle(
                      fontFamily: 'FuturaPT',
                      color: secondary__color,
                      fontSize: size__commonText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                child: Container(
                  width: 410,
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: dashboard__bg__color2,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Chronometer(),
                              // Text(
                              //   '02 : 01 : 40',
                              //   style: TextStyle(
                              //     fontFamily: 'FuturaPT',
                              //     color: secondary__color,
                              //     fontWeight: FontWeight.w800,
                              //     fontSize: size__bigText,
                              //   ),
                              // ),
                              Text(
                                'Temps écoulé',
                                style: TextStyle(
                                  fontFamily: 'FuturaPT',
                                  color: secondary__color,
                                  fontSize: size__littleText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: dashboard__bg__color2,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    '${DateTime.now().day}' +
                                        ' / ' +
                                        '${DateTime.now().month}' +
                                        ' / ' +
                                        '${DateTime.now().year}',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Heure de debut :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    '${DateTime.now().hour}' +
                                        ' : ' +
                                        '${DateTime.now().minute}',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Heure de fin :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    'XX:XX',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'stationnement :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                    ),
                                    child: Text(
                                      'Normal',
                                      style: TextStyle(
                                        fontFamily: 'FuturaPT',
                                        color: secondary__color,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size__commonText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Coût actuel :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: primary__color,
                                    ),
                                    child: Text(
                                      '2000F',
                                      style: TextStyle(
                                        fontFamily: 'FuturaPT',
                                        color: secondary__color,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size__commonText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: dashboard__bg__color2,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Parking :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    'LeParking P',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gérant :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    'N\'dri Kouame',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Contact :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    '0797674576',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Place occupée :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    'A1',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: dashboard__bg__color2,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rangée :',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: color__text3,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontFamily: 'FuturaPT',
                                      color: secondary__color,
                                      fontWeight: FontWeight.w600,
                                      fontSize: size__commonText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(
                          5,
                        ),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: dashboard__bg__color2,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => buy()),
                            );
                          },
                          child: Text(
                            'Payer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'FuturaPT',
                              fontSize: size__commonText,
                              fontWeight: FontWeight.w500,
                              color: secondary__color,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: 0),
          color: dashboard__bg__color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: GNav(
              gap: 8,
              backgroundColor: dashboard__bg__color,
              color: dashboard__bg__color,
              activeColor: secondary__color,
              tabBackgroundColor: dashboard__bg__color2,
              padding: EdgeInsets.all(13),
              tabs: [
                GButton(
                  icon: Icons.person,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => espaceClient()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.map_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapScreen2()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Carte",
                ),
                GButton(
                  icon: Icons.local_parking,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Parkings()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Parkings",
                ),
                GButton(
                  icon: Icons.article,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ticket()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Ticket",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Chronometer extends StatefulWidget {
  @override
  _ChronometerState createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {
  Stopwatch _stopwatch = Stopwatch();
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '${_stopwatch.elapsed.inSeconds}',
          style: TextStyle(
            fontFamily: 'FuturaPT',
            color: secondary__color,
            fontWeight: FontWeight.w800,
            fontSize: size__bigText,
          ),
        ),
        Row(
          children: [
            TextButton(onPressed: _start, child: Text('   ')),
            TextButton(onPressed: _stop, child: Text('   '))
          ],
        )
      ],
    );
  }

  void _start() {
    if (validator == true) {
      _stopwatch.start();
      _timer = Timer.periodic(Duration(seconds: 1), (_) {
        setState(() {});
      });
    }
  }

  void _stop() {
    if (validator == true) {
      _stopwatch.stop();
      _timer.cancel();
    }
  }
}
