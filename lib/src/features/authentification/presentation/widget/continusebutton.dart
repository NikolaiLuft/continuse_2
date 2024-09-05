import 'package:flutter/material.dart';

class ContinuseButton extends StatelessWidget {
  final Widget? navigationWidget;
  final String text;
  final double height;
  final double width;
  const ContinuseButton(
      {super.key,
      this.navigationWidget,
      required this.text,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD3D3D3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.65),
                blurRadius: 15,
                offset: const Offset(0, 15),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => navigationWidget!));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD3D3D3),
                shadowColor: Colors.black.withOpacity(1)),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: "SF Pro",
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
