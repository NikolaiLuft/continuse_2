import 'package:flutter/material.dart';

class Prounouns extends StatefulWidget {
  final String text;
  const Prounouns({super.key, required this.text});

  @override
  State<Prounouns> createState() => _ProunounsState();
}

class _ProunounsState extends State<Prounouns> {
  List<String> genders = ["", "Herr", "Frau", "Divers"];
  late String selectedGenders = genders.first;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Color.fromARGB(255, 3, 3, 3),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
            decorationColor: Color.fromARGB(255, 0, 0, 0),
            decorationThickness: 1.35,
          ),
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Container(
            height: 45,
            width: 110,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
                color: const Color(0xFFD3D3D3),
                borderRadius: BorderRadius.circular(10)),
            child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    dropdownColor: const Color(
                        0xFFD3D3D3), // here you change the background color

                    value: selectedGenders,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    isExpanded: true,
                    style: TextStyle(
                        color: const Color(0x72010000).withOpacity(0.45),
                        fontSize: 17.0),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGenders = newValue!;
                      });
                    },
                    items: genders.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList())))
      ])
    ]);
  }
}
