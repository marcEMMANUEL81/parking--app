import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/part1/Connexion.dart';
import 'package:flutter_gmaps/presentation_application/second__slide/sslide3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../presentation_application/second__slide/sslide1.dart';
import '../presentation_application/second__slide/sslide2.dart';
import '../presentation_application/show.dart';

class Presentation extends StatefulWidget {
  Presentation({key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
            ),
            const Align(alignment: Alignment.center),
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
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.orange,
                dotColor: color__text2,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primary__color,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Connexion()),
                  );
                },
                child: const Text(
                  "Se connecter",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'FuturaPT',
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primary__color,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => show()),
                  );
                },
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'FuturaPT',
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
