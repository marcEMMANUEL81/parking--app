import 'package:flutter/material.dart';
import 'package:flutter_gmaps/CreationParking/floor/floor2.dart';
import 'package:flutter_gmaps/CreationParking/floor/floor3.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/map.dart';
import 'package:flutter_gmaps/part1/Parkings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'floor/floor1.dart';

class ParkingArea extends StatefulWidget {
  ParkingArea({Key key}) : super(key: key);

  @override
  State<ParkingArea> createState() => _ParkingAreaState();
}

final _controller = PageController();

class _ParkingAreaState extends State<ParkingArea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dashboard__bg__color,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                navbar(),
                SizedBox(height: 20),
                SizedBox(
                  height: 760,
                  child: PageView(
                    controller: _controller,
                    children: [
                      floor1(),
                      floor2(),
                      floor3(),
                    ],
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: primary__color,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                  icon: Icons.map,
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
                  icon: Icons.search_rounded,
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
                  icon: Icons.access_time,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Parkings()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Historique",
                ),
                GButton(
                  icon: Icons.settings,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Parkings()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Paramètres",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class navbar extends StatelessWidget {
  const navbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: dashboard__bg__color2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: secondary__color,
              ),
            ),
          ),
          Text(
            "Votre Parking",
            style: TextStyle(
              fontSize: 22,
              color: secondary__color,
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: dashboard__bg__color2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.settings,
              color: secondary__color,
            ),
          ),
        ],
      ),
    );
  }
}
