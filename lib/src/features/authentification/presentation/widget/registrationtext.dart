import 'package:flutter/material.dart';

class RegistrationsText extends StatelessWidget {
  String text;
  String? hinttext;
  double? width;
  TextStyle? hintstyle;

  RegistrationsText({
    super.key,
    required this.text,
    this.width,
    this.hintstyle,
    this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 0, 0, 0),
              decorationThickness: 1.35,
            ),
          ),
        ),
        SizedBox(
          height: 30,
          width: width == null
              ? MediaQuery.of(context).size.width * 0.95
              : MediaQuery.of(context).size.width * width!,
          child: TextFormField(
              decoration: InputDecoration(
            fillColor: const Color(0xFFD3D3D3),
            contentPadding:
                const EdgeInsets.only(top: 0.0, left: 10, right: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
            ),
            filled: true,
            hintText: hinttext,
            hintStyle: hintstyle,
          )),
        )
      ]),
    );
  }
}
