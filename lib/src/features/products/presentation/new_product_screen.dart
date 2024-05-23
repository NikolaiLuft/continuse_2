import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/products/product.dart';
import 'package:flutter/material.dart';

class NewProductScreen extends StatefulWidget {
  MockDatabase mockDatabase;
  Function callback;
  NewProductScreen(this.mockDatabase, this.callback, {super.key});

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              setState(() {
                widget.callback();
                Navigator.of(context).pop();
              });
            }),
        title: Text("Neues Produkt"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.mockDatabase.addProduct(
                  Product(
                    id: '3',
                    sellerUid: '1',
                    title: "Runder Reifen",
                    description: "Wie neu",
                    isSwap: true,
                    isReserved: false,
                    pictures: [],
                  ),
                );
                widget.callback();
                Navigator.of(context).pop();
              });
            },
            child: Text("Hinzufügen"),
          ),
        ],
      ),
    );
  }
}
