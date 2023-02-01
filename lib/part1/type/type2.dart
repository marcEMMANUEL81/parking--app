import 'package:flutter/material.dart';
import 'package:flutter_gmaps/map.dart';
import '../../constantes/const.dart';

class type2 extends StatelessWidget {
  type2({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: dashboard__bg__color,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: secondary__color,
                ),
                Container(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                        ),
                        child: Image.asset(
                          "assets/images/car__pic.png",
                          fit: BoxFit.cover,
                          height: 90,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Voiture",
                        style: TextStyle(
                          fontFamily: 'FuturaPT',
                          fontSize: size__commonText,
                          fontWeight: FontWeight.w800,
                          color: secondary__color,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primary__color),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapScreen2()),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: secondary__color,
                            ),
                          ))
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: secondary__color,
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          )),
    );
  }
}
