// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/dashboard/dashboard.dart';

class co2 extends StatefulWidget {
  const co2({key}) : super(key: key);

  @override
  State<co2> createState() => _co2State();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

List user = ['Brou', 'Yao marc', '+255 0797674576', '1234AB56',];

final _formKey = GlobalKey<FormState>();

var reg_password =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
var reg_email =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class _co2State extends State<co2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/connexion.png', height: 200),
              const SizedBox(height: 40),
              const Text(
                "Remplissez des champs ci-dessous",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 70),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 255, 101, 132),
                          size: 22,
                        ),
                        labelText: "Email *",
                      ),
                      style: const TextStyle(fontSize: 16),
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
                          size: 22,
                          color: Color.fromARGB(255, 255, 101, 132),
                        ),
                        labelText: "Mot de passe *",
                      ),
                      style: const TextStyle(fontSize: 16),
                      controller: passwordController,
                      validator: (value) {
                        if (value.isEmpty ||
                            RegExp(reg_password).hasMatch(value)) {
                          return 'Entrez un numero correct';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 63, 61, 86),
                ),
                child: TextButton(
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Connexion au compte',
                          ),
                        ),
                      );

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => dashboard(),),
                        );

                    }
                  },
                  child: const Text(
                    "Continuer",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'poppins',
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
