import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: 320,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Padding(padding: const EdgeInsets.all(10),
        child:Form(child: Column(
          children: [
            SizedBox(
              height: 75
            ),
            Container(
                width: 300,
                height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  "assets/applogo.png"
                ),
                fit: BoxFit.fill)
        ))]),
        ))));
            

  }
}
