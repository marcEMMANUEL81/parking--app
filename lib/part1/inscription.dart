// ignore_for_file: camel_case_types, sized_box_for_whitespace, non_constant_identifier_names
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/espaceClient2.dart';
import '../constantes/const.dart';

class inscription extends StatefulWidget {
  const inscription({key}) : super(key: key);

  @override
  State<inscription> createState() => _inscriptionState();
}

final nameController = TextEditingController();
final prenomController = TextEditingController();
final immatriculationController = TextEditingController();
final phoneController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();

final _formKey = GlobalKey<FormState>();
var reg_name = r'^[a-z A-Z]+$';
var reg_number = r'^(?:[+0]9)?[0-9]{10}$';
var reg_password =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
var reg_email =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class _inscriptionState extends State<inscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 60, right: 60, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Align(alignment: Alignment.center),
              Container(
                width: 300,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/inscription.png', height: 220),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Remplissez les champs ci-dessous",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'FuturaPT',
                          color: color__text,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: dashboard__bg__color2,
                                size: 22,
                              ),
                              labelText: "Nom *",
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            controller: nameController,
                            validator: (value) {
                              if (value.isEmpty ||
                                  RegExp(reg_name).hasMatch(value)) {
                                return null;
                              }
                              return 'Entrez un nom correct';
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: dashboard__bg__color2,
                                size: 22,
                              ),
                              labelText: "Prenom *",
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            controller: prenomController,
                            validator: (value) {
                              if (value.isEmpty ||
                                  RegExp(reg_name).hasMatch(value)) {
                                return null;
                              }
                              return 'Entrez un prenom correct';
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.article_rounded,
                                color: dashboard__bg__color2,
                                size: 22,
                              ),
                              labelText: "Immatriculation *",
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            controller: immatriculationController,
                            validator: (value) {
                              if (value.isEmpty) {
                              return 'Entrez un numéro d\'immatriculation correct';
                              }
                                return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.call,
                                color: dashboard__bg__color2,
                                size: 22,
                              ),
                              labelText: "Telephone *",
                            ),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 16),
                            controller: phoneController,
                            validator: (value) {
                              if (value.isEmpty ||
                                  RegExp(reg_number).hasMatch(value)) {
                                return 'Entrez un numero correct';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.mail,
                                color: dashboard__bg__color2,
                                size: 20,
                              ),
                              labelText: "Email *",
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            controller: emailController,
                            validator: (value) {
                              if (value.isEmpty ||
                                  value == null ||
                                  RegExp(reg_email).hasMatch(value)) {
                                return null;
                              }
                              return 'Entrez un email correct';
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: dashboard__bg__color2,
                                size: 22,
                              ),
                              labelText: "Mot de passe *",
                              hintStyle: TextStyle(
                                fontFamily: 'FuturaPT',
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            controller: passwordController,
                            validator: (value) {
                              if (value.isEmpty ||
                                  RegExp(reg_password).hasMatch(value)) {
                                return 'Entrez un numero correct';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 63, 61, 86),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Ajout des informations vers la base de données',
                                ),
                              ),
                            );
                            // Ajout des infos dans la base de données
                            FirebaseFirestore.instance
                                .collection('client')
                                .add({
                              'name': nameController.value.text,
                              'phone': phoneController.value.text,
                              'email': emailController.value.text,
                              'password': passwordController.value.text,
                            });
                            //Direction vers la page de verification
                            timer = Timer.periodic(Duration(seconds: 3), (_) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => espaceClient2(nom: nameController.value.text, prenom: nameController.value.text, numero: phoneController.value.text, immatriculation: immatriculationController.value.text,)),
                              );
                            });
                          }
                        },
                        child: const Text(
                          "Continuer",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'FuturaPT',
                            color: secondary__color,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var timer;
