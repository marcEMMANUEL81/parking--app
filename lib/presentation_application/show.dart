import 'package:flutter/material.dart';
import 'package:flutter_gmaps/presentation_application/show__slide/slide2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constantes/const.dart';
import 'show__slide/slide1.dart';

class show extends StatefulWidget {
  show({Key key}) : super(key: key);

  @override
  State<show> createState() => _showState();
}

final _controller = PageController();
final String pageAccess = '';

class _showState extends State<show> {
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
            'Inscription',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 580,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  index = index;
                },
                children: [
                  slide1(),
                  slide2(),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.orange,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
