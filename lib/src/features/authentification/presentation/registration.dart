
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container(
        width: 393,
        height: 852,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(children: [
                const SizedBox(height: 55),
                Container(
                  width: 180,
                  height: 130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/applogo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ]),
            ),
        ),
      ),
    );
    }
}