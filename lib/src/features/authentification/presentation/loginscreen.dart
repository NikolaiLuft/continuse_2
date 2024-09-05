import 'package:continuse_2/src/data/auth_repository.dart';
import 'package:continuse_2/src/features/authentification/presentation/registration.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/logowidget.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/social_button.dart';
import 'package:continuse_2/src/features/authentification/presentation/widget/textcontroller_login.dart';
import 'package:continuse_2/src/features/home/presentation/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController mailController;
  late TextEditingController _pwController;
  String? errorMessage;
  @override
  void initState() {
    super.initState();
    mailController = TextEditingController();
    _pwController = TextEditingController();
  }

  @override
  void dispose() {
    mailController.dispose();
    _pwController.dispose();
    super.dispose();
  }

  bool showPassword = false;
  bool showCreateAccountNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const LogoWidget(width: 250, height: 170),
                const SizedBox(height: 40),
                TextFieldAuth(
                  mailController: mailController,
                  pwController: _pwController,
                ),
                const SizedBox(height: 10),
                if (showCreateAccountNotification) ...[
                  Text(
                    errorMessage ?? "Erstelle dir ein Account!",
                    style: const TextStyle(
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(174, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Passwort vergessen?",
                        style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 6, 6, 6),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () async {
                    try {
                      await context
                          .read<AuthRepository>()
                          .loginWithEmailAndPassword(
                            mailController.text,
                            _pwController.text,
                          );
                      if (!context.mounted) return;
                      // Navigate to the HomeScreen on successful login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                      setState(() {
                        showCreateAccountNotification = false;
                      });
                    } catch (e) {
                      setState(() {
                        showCreateAccountNotification = true;
                      });
                    }
                  },
                ),
                const SizedBox(height: 10),
                const Row(
                  children: <Widget>[
                    Expanded(child: Divider(color: Colors.black)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Oder",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 5),
                SocialLoginButton(
                  icon: const Icon(
                    Icons.apple,
                    color: Colors.black,
                    size: 30,
                  ),
                  text: "Sign in with Apple",
                ),
                const SizedBox(height: 10),
                SocialLoginButton(
                  icon: Image.asset(
                    "assets/googleimage.png",
                    height: 22,
                  ),
                  text: "Sign in with Google",
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      "Du hast noch keinen Account?",
                      style: TextStyle(color: Color.fromARGB(255, 13, 13, 13)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Registrieren",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(255, 10, 10, 10),
                              offset: Offset(0, -5),
                            ),
                          ],
                          color: Colors.transparent,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 0, 0),
                          decorationThickness: 1.35,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
