// ignore_for_file: camel_case_types, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/map.dart';

class Info__parking extends StatefulWidget {
  Info__parking({key}) : super(key: key);

  @override
  State<Info__parking> createState() => _Info__parkingState();
}

class _Info__parkingState extends State<Info__parking> {
  List images = [
    'assets/images/img6.jpg',
    'assets/images/img7.jpg',
    'assets/images/img8.jpg',
    'assets/images/car.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondary__color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: dashboard__bg__color2,
          title: Text(
            'Infos du parking',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontSize: size__commonText,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: secondary__color,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 150,
                  width: 400,
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/car.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parking Avenue 3",
                        style: TextStyle(
                          color: primary__color,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: 'FuturaPT',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primary__color,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapScreen2()),
                            );
                          },
                          child: const Text(
                            "Itinéraire",
                            style: TextStyle(
                              fontFamily: 'FuturaPT',
                              fontSize: size__commonText,
                              fontWeight: FontWeight.w700,
                              color: secondary__color,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 180,
                            child: const Text(
                              "Places Disponibles",
                              style: TextStyle(
                                fontSize: size__commonText,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'FuturaPT',
                                color: color__text,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 180,
                            child: const Text(
                              "(50 Places)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'FuturaPT',
                                fontWeight: FontWeight.w800,
                                color: primary__color,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orangeAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orangeAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orangeAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orangeAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: color__text,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: secondary__color,
                            border: Border.all(width: 2, color: primary__color),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Text('1 - 2',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w900,
                                    fontSize: size__commonText)),
                            SizedBox(height: 10),
                            Text('Heures',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontSize: 10)),
                            SizedBox(height: 10),
                            Text(
                              '1000F',
                              style: TextStyle(
                                  color: color__text,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'poppins',
                                  fontSize: size__commonText),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: primary__color,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Text('2 - 4',
                                style: TextStyle(
                                    color: secondary__color,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w900,
                                    fontSize: size__commonText)),
                            SizedBox(height: 10),
                            Text('Heures',
                                style: TextStyle(
                                    color: secondary__color,
                                    fontFamily: 'poppins',
                                    fontSize: 10)),
                            SizedBox(height: 10),
                            Text('2000F',
                                style: TextStyle(
                                    color: secondary__color,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'poppins',
                                    fontSize: size__commonText)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: secondary__color,
                            border: Border.all(width: 2, color: primary__color),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Text('4 - 6',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w900,
                                    fontSize: size__commonText)),
                            SizedBox(height: 10),
                            Text('Heures',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontSize: 10)),
                            SizedBox(height: 10),
                            Text('3000F',
                                style: TextStyle(
                                    color: color__text,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'poppins',
                                    fontSize: size__commonText)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: secondary__color,
                            border: Border.all(width: 2, color: primary__color),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Text('6 - 8',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w900,
                                    fontSize: size__commonText)),
                            SizedBox(height: 10),
                            Text('Heures',
                                style: TextStyle(
                                    color: color__text,
                                    fontFamily: 'poppins',
                                    fontSize: 10)),
                            SizedBox(height: 10),
                            Text(
                              '4000F',
                              style: TextStyle(
                                  color: color__text,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'poppins',
                                  fontSize: size__commonText),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    "Photos du parking",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: primary__color,
                      fontFamily: 'FuturaPT',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: images.map((pic) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.only(left: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            pic,
                            fit: BoxFit.cover,
                            width: 200,
                            height: 130,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    "A propos",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'FuturaPT',
                        color: primary__color,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    "Lorem ipsum dolor sid admet color ido sum la palagarente color so fior mid so gum paw la riosa color de si od admet para garante delorocala brou yao ra baracouda.Lorem ipsum dolor sid admet color ido sum color.",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'poppins',
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 360,
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Color.fromARGB(255, 29, 87, 149)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "07 97 67 45 76",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 360,
                  child: Row(
                    children: [
                      Icon(Icons.mail, color: Color.fromARGB(255, 29, 87, 149)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "marcemmanuel81@gmail.com",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    "Commentaires",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 29, 87, 149)),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/images/man.png",
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Brou Yao",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Row(children: [
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.rate_review,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("14")
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the and typesetting industry. Lorem Ipsum has been he",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14, fontFamily: 'poppins'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 29, 87, 149)),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/images/man.png",
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Konan Yao",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Row(children: [
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.rate_review,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("14")
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Lorem Ipsum is simply dummy tsum has been he",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14, fontFamily: 'poppins'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 29, 87, 149)),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/images/man.png",
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Konan Yao",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Row(children: [
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.rate_review,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("14")
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Lorem Ipsum has been he brou yao le meilleur",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14, fontFamily: 'poppins'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 29, 87, 149)),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/images/man.png",
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Konan Yao",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Row(children: [
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.rate_review,
                                size: 20,
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("14")
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the and typesetting industry.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14, fontFamily: 'poppins'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
