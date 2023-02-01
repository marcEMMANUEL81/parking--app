import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:dotted_border/dotted_border.dart';

class floor3 extends StatefulWidget {
  floor3({Key key}) : super(key: key);

  @override
  State<floor3> createState() => _floor3State();
}

class _floor3State extends State<floor3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          header(),
          SizedBox(height: 30),
          range(),
        ],
      ),
    );
  }
}

var box__color = secondary__color;
var check_color = secondary__color;
var my_text = 'Disponible';
var color_text = color__text;
var activate = false;

var gradiant1 = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
  ],
);

var gradiant2 = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color.fromARGB(255, 212, 229, 242),
    Color.fromARGB(255, 255, 255, 255),
  ],
);

var my__gradiant = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
  ],
);

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
                '3e Rangée',
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
              // Container(
              //   height: 110,
              //   width: 161,
              //   decoration: BoxDecoration(
              //     gradient: my__gradiant,
              //     border: Border(
              //       top: BorderSide(
              //         color: primary__color,
              //         width: 2.0,
              //       ),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Center(
              //           child: Container(
              //         padding: EdgeInsets.only(
              //             top: 5, bottom: 5, left: 18, right: 20),
              //         decoration: BoxDecoration(
              //           color: box__color,
              //           borderRadius: BorderRadius.circular(60),
              //         ),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Container(
              //               child: TextButton(
              //                 onPressed: () {
              //                   if (my__gradiant == gradiant1) {
              //                     setState(
              //                       () {
              //                         my__gradiant = gradiant2;
              //                         box__color = primary__color;
              //                         check_color = primary__color;
              //                         my_text = 'Choix';
              //                         color_text = secondary__color;
              //                         show_close = close;
              //                       },
              //                     );
              //                   } else if (my__gradiant == gradiant2) {
              //                     setState(
              //                       () {
              //                         my__gradiant = gradiant1;
              //                         box__color = secondary__color;
              //                         check_color = secondary__color;
              //                         my_text = 'Disponible';
              //                         color_text = primary__color;
              //                         show_close = Container(
              //                           child: Text(''),
              //                         );
              //                       },
              //                     );
              //                   }
              //                 },
              //                 child: Text(
              //                   my_text,
              //                   style: TextStyle(
              //                     fontSize: size__commonText,
              //                     color: color_text,
              //                     fontWeight: FontWeight.w700,
              //                     fontFamily: 'poppins',
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 3,
              //             ),
              //             Container(
              //               padding: EdgeInsets.all(1),
              //               decoration: BoxDecoration(
              //                 color: secondary__color,
              //                 borderRadius: BorderRadius.circular(60),
              //               ),
              //               child: Icon(
              //                 Icons.check,
              //                 size: 16,
              //                 color: check_color,
              //               ),
              //             )
              //           ],
              //         ),
              //       )),
              //       Positioned(
              //         bottom: 5.0,
              //         right: 10,
              //         child: Text(
              //           'A1',
              //           style: TextStyle(
              //               fontSize: size__littleText,
              //               fontWeight: FontWeight.w700,
              //               color: primary__color),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Container(
                height: 110,
                width: 160,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: color__text3,
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
                    color: color__text3,
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
                        'A2',
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
                      color: color__text3,
                      width: 2.0,
                    ),
                  ),
                ),
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
                        'A3',
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
                      color: color__text3,
                      width: 2.0,
                    ),
                  ),
                ),
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
                        'A4',
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
                    color: color__text3,
                    width: 2.0,
                  ),
                  bottom: BorderSide(
                    color: color__text3,
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
                        'A5',
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
                        'B2',
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
                        'B4',
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
                        'B5',
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
