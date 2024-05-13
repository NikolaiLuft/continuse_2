import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Splashscreen als Startseite festlegen
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo oder Bild des Splashscreens
            Image.asset('assets/logo.png'),
            SizedBox(height: 20),
            // Ladebalken oder Text
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}