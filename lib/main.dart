import 'package:continuse_2/firebase_options.dart';
import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/authentification/presentation/registration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  MockDatabase mockdb = MockDatabase();
  runApp(MainApp(mockdb));
}

class MainApp extends StatelessWidget {
  MockDatabase mockdb;
  MainApp(this.mockdb, {super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationScreen(mockdb),
    );
  }
}
