import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:continuse_2/src/features/authentification/presentation/registration.dart';
import 'package:continuse_2/src/features/authentification/presentation/startscreen.dart';
import 'package:continuse_2/src/features/home/presentation/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  MockDatabase mockdb = MockDatabase();
  runApp(MainApp(mockdb));
}

class MainApp extends StatelessWidget {
  MockDatabase mockdb;
  MainApp(this.mockdb, {super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: RegistrationScreen(mockdb),
    );
  }

}