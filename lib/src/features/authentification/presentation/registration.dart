

import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/continusebutton.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/logowidget.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/pronouns.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/registrationtext.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen(MockDatabase mockdb, {super.key});

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
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Form(
                child: Column(children: [
                  const SizedBox(height: 55),
                  LogoWidget(width: 217, height: 150),
                  const SizedBox(height: 10),
                  const Text('Registrieren',
                      style: TextStyle(
                          shadows: [
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
                  const SizedBox(height: 5),
                  const SizedBox(height: 15),
                  RegistrationsText(text: 'Vorname'),
                  const SizedBox(height: 5),
                  const SizedBox(height: 10),
                  RegistrationsText(text: 'Nachname'),
                  const SizedBox(height: 5),
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
                  SizedBox(
                    height: 55,
                    child: Row(
                      children: [
                      RegistrationsText(text: 'PLZ',width: 0.25,),
                    const SizedBox(width: 10,),
                    
                    RegistrationsText(text: 'Wohnort',width: 0.45,),
                   
                                    ]),
                  ),
                  const SizedBox(height: 5),
     
                  const SizedBox(height: 10),
                  RegistrationsText(text: 'E-Mail Adresse'),
                  const SizedBox(height: 5),
                  const SizedBox(height: 90),
                  // ContinuseButton(
                  //   navigationWidget: PasswortAddScreen(),
                  //   text: "Passwort erstellen",
                  //   width: 247,
                  //   height: 50,
                  // ),
                  const SizedBox(height: 10),
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
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginScreen())));
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