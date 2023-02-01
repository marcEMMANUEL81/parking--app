// ignore_for_file: file_names, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_gmaps/map.dart';
import 'package:flutter_gmaps/part1/Info__parking.dart';
import 'package:flutter_gmaps/part1/pages__slider/page1.dart';
import 'package:flutter_gmaps/part1/pages__slider/page2.dart';
import 'package:flutter_gmaps/part1/pages__slider/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../constantes/const.dart';
import '../espaceClient.dart';
import '../tickets/ticket.dart';

final List park = [
  {
    'nom': 'Public parking Courthouse',
    'pos': 'Plateau 1.2km',
    'image': 'assets/images/img6.jpg',
  },
  {
    'nom': 'Parking de l\'immeuble BORG',
    'pos': 'Plateau 1.2km',
    'image': 'assets/images/img7.jpg',
  },
  {
    'nom': 'KNP valet Parking',
    'pos': 'Plateau 1.2km',
    'image': 'assets/images/img8.jpg',
  },
  {
    'nom': 'Parking CIWA',
    'pos': 'Plateau 1.2km',
    'image': 'assets/images/car.jpg',
  },
];

final List bigPark = [
  {
    'nom': 'Public parking Courthouse',
    'pos': 'Plateau',
    'Distance': 'à 1.2 km de votre position actuelle',
    'image': 'assets/images/img6.jpg',
  },
  {
    'nom': 'Parking de l\'immeuble BORG',
    'pos': 'Plateau',
    'Distance': 'à 1.2 km de votre position actuelle',
    'image': 'assets/images/img7.jpg',
  },
  {
    'nom': 'KNP valet Parking',
    'pos': 'Plateau',
    'Distance': 'à 1.2 km de votre position actuelle',
    'image': 'assets/images/img8.jpg',
  },
  {
    'nom': 'Parking CIWA',
    'pos': 'Plateau',
    'Distance': 'à 1.2 km de votre position actuelle',
    'image': 'assets/images/car.jpg',
  },
];

class Parkings extends StatelessWidget {
  Parkings({key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     padding: EdgeInsets.all(20),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 55,
                width: 370,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    width: 2,
                    color: primary__color,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ou allons nous ?",
                          hintStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 360,
                child: Text(
                  "Parkings récemment fréquentés",
                  style: TextStyle(
                    fontFamily: 'FuturaPT',
                    color: primary__color,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              parking__part1(),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Garez tout type de véhicules',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'FuturaPT',
                  fontWeight: FontWeight.w700,
                  color: primary__color,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 250,
                child: PageView(
                  controller: _controller,
                  children: [
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    activeDotColor: primary__color,
                    dotHeight: 10,
                    dotWidth: 10),
              ),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                width: 360,
                child: Text(
                  "Autres Parkings",
                  style: TextStyle(
                    fontFamily: 'FuturaPT',
                    color: primary__color,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              parking__part2()
            ],
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

class parking__part1 extends StatelessWidget {
  const parking__part1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: park.map((parking) {
          return Container(
            height: 250,
            width: 170,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: dashboard__bg__color2,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    parking['image'],
                    fit: BoxFit.cover,
                    height: 90,
                    width: 170,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 150,
                  child: Text(
                    parking['nom'],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'FuturaPT',
                      color: secondary__color,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 150,
                  child: Text(
                    parking['pos'],
                    style: TextStyle(
                      color: color__text2,
                      fontSize: size__littleText,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'FuturaPT',
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary__color,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info__parking()),
                      );
                    },
                    child: const Text(
                      "Voir",
                      style: TextStyle(
                        fontSize: size__commonText,
                        fontFamily: 'FuturaPT',
                        color: secondary__color,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}

class parking__part2 extends StatelessWidget {
  const parking__part2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: bigPark.map((parking) {
          return Container(
            height: 310,
            width: 360,
            margin: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    parking['image'],
                    fit: BoxFit.cover,
                    height: 130,
                    width: 360,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 290,
                  child: Text(
                    parking['nom'],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'FuturaPT',
                      fontSize: size__commonText,
                      color: primary__color,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 219, 171, 67),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 219, 171, 67),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 219, 171, 67),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 219, 171, 67),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 144, 144, 144),
                        size: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 290,
                  child: Text(
                    parking['pos'],
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 128, 128),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 290,
                  child: Text(
                    parking['Distance'],
                    style: TextStyle(
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary__color,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info__parking()),
                      );
                    },
                    child: const Text(
                      "Voir",
                      style: TextStyle(
                        fontSize: size__commonText,
                        fontFamily: 'FuturaPT',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}


// Text(
//                 'Votre véhicule est en sécurité avec nous',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w900,
//                   color: primary__color,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 40,
//               ),

// Image.asset('assets/images/car__pic.png'),
//               const SizedBox(
//                 height: 60,
//               ),


// 'nom': 'Public parking Courthouse',
//     'pos': 'Plateau',
//     'Distance': 'à 1.2 km de votre position actuelle',
//     'distance