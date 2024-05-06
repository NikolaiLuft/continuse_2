import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _startScreenState();
}

// ignore: camel_case_types
class _startScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 385,
            height: 136,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(""),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}