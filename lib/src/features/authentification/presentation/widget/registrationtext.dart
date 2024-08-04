import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegistrationsText extends StatelessWidget {
  String text;
  String? hinttext;
  double? width;
  TextStyle? hintstyle;
  TextEditingController controller;
  String? Function(String?)? validator;
  AutovalidateMode? autovalidateMode;
  TextInputType? keybordtype;

  RegistrationsText(
      {super.key,
      required this.text,
      this.hinttext,
      this.width,
      this.hintstyle,
      required this.controller,
      this.validator,
      this.autovalidateMode,
      this.keybordtype});

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
              controller: controller,
              validator: validator,
              keyboardType: keybordtype,
              autovalidateMode: autovalidateMode,
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
