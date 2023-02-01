import 'package:flutter/material.dart';
import 'package:flutter_gmaps/part1/Parkings.dart';
import 'package:flutter_gmaps/presentation_application/second__slide/sslide1.dart';
import 'package:flutter_gmaps/presentation_application/second__slide/sslide2.dart';
import 'package:flutter_gmaps/presentation_application/second__slide/sslide3.dart';
import 'package:flutter_gmaps/tickets/ticket.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constantes/const.dart';
import 'main.dart';

// ignore: must_be_immutable
class espaceClient2 extends StatelessWidget {
  final String nom;
  final String prenom;
  final String numero;
  final String immatriculation;
  espaceClient2({key, this.nom, this.prenom, this.numero, this.immatriculation})
      : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondary__color,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            'Votre espace',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontSize: size__commonText,
              fontWeight: FontWeight.w800,
              color: secondary__color,
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
              Text(
                'Vos Informations',
                style: TextStyle(
                  fontFamily: 'FuturaPT',
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: primary__color,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: dashboard__bg__color2,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
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
                          nom,
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
                          prenom,
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
                          numero,
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
                          immatriculation,
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
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'BIENVENUE SUR SECURE PARK',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: size__commonText,
                  fontWeight: FontWeight.w900,
                  color: primary__color,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                child: PageView(
                  controller: _controller,
                  children: [
                    sslide1(),
                    sslide2(),
                    sslide3(),
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
                  dotWidth: 10,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primary__color,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Voir l\'ensemble des transactions',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: secondary__color,
                    ),
                  ),
                ),
              )
            ]),
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
                    // Navigator.push(
                    //   context,
                    // MaterialPageRoute(builder: (context) => espaceClient(nom: nom)),
                    // );
                  },
                  iconColor: secondary__color,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.map_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapScreen()),
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
