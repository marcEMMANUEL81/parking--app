// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gmaps/dashboard/dashboard.dart';
import 'package:flutter_gmaps/part1/get.dart';
import 'package:get/get.dart';
import '../constantes/const.dart';

class Number2 extends GetView<TimerController> {
  const Number2({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
            'Vérification',
            style: TextStyle(
              fontFamily: 'FuturaPT',
              fontWeight: FontWeight.w800,
              fontSize: size__commonText,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 40,
              top: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/otp.png',
                  height: 220,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Code de vérification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FuturaPT',
                    color: color__text,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 340,
                  child: Text(
                    "Nous envoyons un code de vérification à : +225 07 97 67 45 76",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size__commonText,
                      fontFamily: 'FuturaPT',
                      color: Color.fromARGB(255, 65, 65, 65),
                    ),
                  ),
                ),
                // Text(var__number),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 55,
                        height: 60,
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 208, 208, 208),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "",
                          ),
                          onChanged: (value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()}
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'FuturaPT',
                            fontWeight: FontWeight.w800,
                            color: color__text,
                          ),
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 60,
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 208, 208, 208),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "",
                          ),
                          onChanged: (value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()}
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'FuturaPT',
                            fontWeight: FontWeight.w800,
                            color: color__text,
                          ),
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 60,
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 208, 208, 208),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "",
                          ),
                          onChanged: (value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()}
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'FuturaPT',
                            fontWeight: FontWeight.w800,
                            color: color__text,
                          ),
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 60,
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 208, 208, 208),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "",
                          ),
                          onChanged: (value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()}
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'FuturaPT',
                            fontWeight: FontWeight.w800,
                            color: color__text,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: dashboard__bg__color2,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dashboard()),
                      );
                    },
                    child: const Text(
                      "Soumettre",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FuturaPT',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Vous n'avez pas reçu le code ? Cela peut prendre un peu de temps, redemendez un nouveau code dans ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'FuturaPT',
                    fontSize: size__commonText,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Obx(
                  () => Center(
                    child: Text(
                      '${controller.time.value}',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'poppins',
                        color: Color.fromARGB(255, 255, 101, 132),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 390,
                  child: Text(
                    "Si besoin d'aide merci de vous rérérer au Centre d'Assistance ou de contacter notre service client",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'FuturaPT',
                      fontSize: size__commonText,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  "assets/images/logo.png",
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
