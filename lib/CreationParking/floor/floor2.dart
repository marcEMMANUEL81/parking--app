import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:dotted_border/dotted_border.dart';

class floor2 extends StatefulWidget {
  floor2({Key key}) : super(key: key);

  @override
  State<floor2> createState() => _floor2State();
}

class _floor2State extends State<floor2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          header(),
          SizedBox(height: 30),
          range(),
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, color: dashboard__bg__color2),
          Icon(Icons.arrow_back_ios, color: dashboard__bg__color2),
          Column(
            children: [
              Text(
                '2e Rangée',
                style: TextStyle(
                    fontSize: size__bigText,
                    color: secondary__color,
                    fontFamily: 'FuturaPT',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                '10 Place libres',
                style: TextStyle(
                  fontSize: size__littleText,
                  color: color__text3,
                  fontFamily: 'FuturaPT',
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: dashboard__bg__color2),
          Icon(Icons.arrow_forward_ios, color: dashboard__bg__color2),
        ],
      ),
    );
  }
}

class range extends StatefulWidget {
  range({Key key}) : super(key: key);

  @override
  State<range> createState() => _rangeState();
}

class _rangeState extends State<range> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: size__commonText,
                          color: secondary__color,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Image.asset('assets/images/little__car.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A2',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: size__commonText,
                          color: secondary__color,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: color__text2,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Image.asset('assets/images/little__car.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A4',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                  bottom: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Image.asset('assets/images/little__car.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A5',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: [6, 3, 0, 2, 3],
            color: dashboard__bg__color2,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(0),
            child: ClipRRect(
              child: Container(
                height: 600,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset('assets/images/little__car.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'B1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: size__commonText,
                          color: secondary__color,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset('assets/images/little__car.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'B3',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: size__commonText,
                          color: secondary__color,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                  bottom: BorderSide(
                    color: color__text2,
                    width: 2.0,
                  ),
                )),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: size__commonText,
                          color: secondary__color,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10,
                      child: Text(
                        'A1',
                        style: TextStyle(
                          fontSize: size__littleText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FuturaPT',
                          color: dashboard__bg__color2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
