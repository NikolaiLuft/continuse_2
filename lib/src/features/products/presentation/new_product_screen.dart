import 'package:flutter/material.dart';
// Stelle sicher, dass der Pfad korrekt ist

class NewProductScreen extends StatefulWidget {
  const NewProductScreen({super.key});

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
  late TextEditingController _productNameController;
  late bool isSwap;
  late bool isReserved;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _productNameController = TextEditingController();
    isSwap = false;
    isReserved = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("Neues Produkt"),
          centerTitle: true,
        ),
        body: Form(
            child: Column(children: [
          TextFormField(controller: _productNameController),
          Switch(
              value: isSwap,
              onChanged: (value) {
                setState(() {
                  isSwap = value;
                });
              }),
          Switch(
              value: isReserved,
              onChanged: (value) {
                setState(() {
                  isReserved = value;
                });
              }),
        ])));
  }
}

// // ElevatedButton(
// //                     onPressed: () {
// //                       final database = context
// //                           .read<DatabaseRepository>()
// //                           .addProduct(Product(
// //                               id: '3',
// //                               sellerUid: '1',
// //                               title: "Runder Reifen",
// //                               description: "Wie neu",
// //                               isSwap: true,
// //                               isReserved: false,
// //                               pictures: []));
             
// //                       // Zurück zur vorherigen Seite navigieren
// //                       Navigator.pop(context);
// //                     },
// //                     child: const Text("Hinzufügen"),)
// //                   ),
