

import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/continusebutton.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/logowidget.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/pronouns.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/registrationtext.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 393,
        height: 852,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 111, 111, 112)),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Form(
                child: Column(children: [
                  const SizedBox(height: 55),
                  LogoWidget(width: 217, height: 150),
                  const SizedBox(height: 10),
                  Text('Registrieren',
                      style: TextStyle(
                          shadows: const [
                            Shadow(color: Color.fromARGB(255, 14, 1, 1), offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Regular',
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 0, 0),
                          decorationThickness: 1.35)),
                  const SizedBox(height: 25),
                  Prounouns(text: 'Anrede'),
                  SizedBox(height: 5),
                  const SizedBox(height: 15),
                  RegistrationsText(text: 'Vorname'),
                  SizedBox(height: 5),
                  const SizedBox(height: 10),
                  RegistrationsText(text: 'Nachname'),
                  SizedBox(height: 5),
                  const SizedBox(height: 10),
                  RegistrationsText(
                    text: 'Geburtsdatum',
                    hinttext: 'TT.MM.JJJJ',
                    hintstyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0x72010000).withOpacity(0.45),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(height: 10),
                  RegistrationsText(text: 'E-Mail Adresse'),
                  SizedBox(height: 5),
                  const SizedBox(height: 90),
                  // ContinuseButton(
                  //   navigationWidget: PasswortAddScreen(),
                  //   text: "Passwort erstellen",
                  //   width: 247,
                  //   height: 50,
                  // ),
                  const SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                            onPressed: () {
                        //       Navigator.pushReplacement(
                        // //           context,
                        // //           MaterialPageRoute(
                        // //             builder: (context) => LoginScreen(),
                        // //           ));
                            },
                            child: InkWell (onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen())));
                            },
                              child: const Text("Zurück zur Anmeldung",
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          offset: Offset(0, -5))
                                    ],
                                    color: Colors.transparent,
                                    fontSize: 15,
                                    fontFamily: "SF Pro",
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color.fromARGB(255, 0, 0, 0),
                                    decorationThickness: 1.35,
                                  )),
                            )),
                      ])
                ]),
              ),
            )),
      ),
    );
  }
}