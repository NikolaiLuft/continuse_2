import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(), // Splashscreen als Startseite festlegen
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo oder Bild des Splashscreens
            Image.asset('assets/logo.png'),
            const SizedBox(height: 20),
            // Ladebalken oder Text
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
