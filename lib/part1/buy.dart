// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class buy extends StatelessWidget {
  const buy({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Payer avec",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 200,
                  height: 110,
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
                      ]),
                  child: Column(children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      "assets/images/orange.png",
                      height: 40,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Orange Money",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Color.fromARGB(255, 224, 147, 71),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    )
                  ]),
                ),
                const SizedBox(height: 40),
                Container(
                  width: 330,
                  height: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 214, 214, 214),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Numéro de téléphone",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: 'poppins',
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 260,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            )
                          ]),
                      child: Row(children: [
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/images/cap.png",
                          height: 30,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "+225  0797674576",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 37, 37, 37),
                            fontFamily: 'poppins',
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 170,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/mtn.png"),
                          Image.asset("assets/images/moov.png"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 52, 191, 33),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Payer",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.lock_rounded,
                          color: const Color.fromARGB(255, 52, 191, 33),
                        ),
                        Row(
                          children: [
                            Text(
                              "Sécurisé par ",
                              style: TextStyle(
                                  fontFamily: 'poppins', fontSize: 15),
                            ),
                            Text(
                              "CinetPay",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                  color:
                                      const Color.fromARGB(255, 52, 191, 33)),
                            )
                          ],
                        )
                      ],
                    ),
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
