import 'package:continuse_2/src/features/authentification/presentation/widget/logowidget.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  // Attribute
  // final DatabaseRepository databaseRepository;
  // // Konstruktor
  // const StartScreen({super.key, required this.databaseRepository});
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                ))),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(height: 0),
                  LogoWidget(width: 250, height: 150),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: 10)],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
