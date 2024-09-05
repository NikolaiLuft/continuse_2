import 'package:continuse_2/src/data/auth_repository.dart';
import 'package:continuse_2/src/features/authentification/presentation/login_screen.dart';
import 'package:continuse_2/src/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const loginKey = ValueKey('loginScreen');
    const homeKey = ValueKey('homeScreen');

    return StreamBuilder(
        stream: context.read<AuthRepository>().authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            key: user == null ? loginKey : homeKey,
            home: user == null ? const LoginScreen() : const HomeScreen(),
          );
        });
  }
}
