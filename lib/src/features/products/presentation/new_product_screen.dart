import 'package:continuse_2/src/data/database_repository.dart';
import 'package:continuse_2/src/features/home/presentation/homescreen.dart';
import 'package:continuse_2/src/features/products/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Stelle sicher, dass der Pfad korrekt ist

class NewProductScreen extends StatefulWidget {
  const NewProductScreen({super.key});

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
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
      body: Column(
        children: [
          Form(
            child: ElevatedButton(
              onPressed: () {
                final database = context.read<DatabaseRepository>().addProduct(
                    Product(
                        id: '3',
                        sellerUid: '1',
                        title: "Runder Reifen",
                        description: "Wie neu",
                        isSwap: true,
                        isReserved: false,
                        pictures: []));

                // Produkt hinzufügen
                // database.addProduct(
                //   Product(
                //     id: '3',
                //     sellerUid: '1',
                //     title: "Runder Reifen",
                //     description: "Wie neu",
                //     isSwap: true,
                //     isReserved: false,
                //     pictures: [],
                //   ),
                // );

                // Zurück zur vorherigen Seite navigieren
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child: const Text("Hinzufügen"),
            ),
          )
        ],
      ),
    );
  }
}
