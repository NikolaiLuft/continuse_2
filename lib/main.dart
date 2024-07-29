import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:continuse_2/firebase_options.dart';
import 'package:continuse_2/src/data/auth_repository.dart';
import 'package:continuse_2/src/data/database_repository.dart';
import 'package:continuse_2/src/data/firestore_database.dart';
import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DatabaseRepository databaseRepository =
      FirestoreDatabase(FirebaseFirestore.instance);
  AuthRepository authRepository = AuthRepository(FirebaseAuth.instance);
  runApp(
    MultiProvider(
      providers: [
        Provider<DatabaseRepository>(
          create: (_) => databaseRepository,
        ),
        Provider<AuthRepository>(
          create: (_) => authRepository,
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  MockDatabase mockdb;
  MainApp(this.mockdb, {super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
