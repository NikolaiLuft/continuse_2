import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/continusebutton.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/logowidget.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/registrationtext.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late TextEditingController vornameController;
  late TextEditingController nachnameController;
  late TextEditingController geburtsdatumController;
  late TextEditingController mailController;
  late TextEditingController pronounsController;
  late TextEditingController plzController;
  late TextEditingController wohnortController;

  @override
  void initState() {
    super.initState();
    vornameController = TextEditingController();
    nachnameController = TextEditingController();
    geburtsdatumController = TextEditingController();
    mailController = TextEditingController();
    pronounsController = TextEditingController();
    plzController = TextEditingController();
    wohnortController = TextEditingController();
  }

  @override
  void dispose() {
    vornameController.dispose();
    nachnameController.dispose();
    geburtsdatumController.dispose();
    mailController.dispose();
    plzController.dispose();
    wohnortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(children: [
            const SizedBox(height: 55),
            LogoWidget(width: 217, height: 150),
            const SizedBox(height: 10),
            const Text('Registrieren',
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Color.fromARGB(255, 14, 1, 1),
                          offset: Offset(0, -5))
                    ],
                    color: Colors.transparent,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Regular',
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 0, 0, 0),
                    decorationThickness: 1.35)),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: RegistrationsText(
                controller: vornameController,
                text: '  Vorname',
                validator: validateVn,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: RegistrationsText(
                text: 'Nachname',
                controller: nachnameController,
                validator: validateNn,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: RegistrationsText(
                text: 'Geburtsdatum',
                hinttext: 'TT.MM.JJJJ',
                controller: geburtsdatumController,
                validator: validateGb,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintstyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0x72010000).withOpacity(0.45),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 13.4,
              ),
              child: SizedBox(
                height: 55,
                child: Row(children: [
                  RegistrationsText(
                    text: 'PLZ',
                    controller: plzController,
                    validator: validatePlz,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    width: 0.25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RegistrationsText(
                    text: 'Wohnort',
                    controller: wohnortController,
                    validator: validateWohnort,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    width: 0.65,
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: RegistrationsText(
                text: 'E-Mail Adresse',
                controller: mailController,
                validator: validateEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                width: 0.92,
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 180),
            ContinuseButton(
              // navigationWidget: PasswortAddScreen(),
              text: "Passwort erstellen",
              width: 247,
              height: 40,
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              TextButton(
                  onPressed: () {
                    //       Navigator.pushReplacement(
                    // //           context,
                    // //           MaterialPageRoute(
                    // //             builder: (context) => LoginScreen(),
                    // //           ));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LoginScreen())));
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
      ),
    );
  }

  String? validateVn(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte Vorname eingeben';
    }
    return null;
  }

  String? validateNn(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte Nachname eingeben';
    }
    return null;
  }

  String? validateGb(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte Geburtsdatum eingeben';
    }
    return null;
  }

  String? validateEmail(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte E-Mail eingeben';
    }
    return null;
  }

  String? validatePlz(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte PLZ eingeben';
    }
    return null;
  }

  String? validateWohnort(String? input) {
    if (input == null || input.isEmpty) {
      return 'Bitte Wohnort eingeben';
    }
    return null;
  }
}
