import 'package:continuse_2/src/data/mock_database.dart';
import 'package:continuse_2/src/features/products/product.dart';
import 'package:continuse_2/src/features/products/presentation/detail_screen_product.dart';
import 'package:continuse_2/src/features/products/presentation/new_product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  MockDatabase mockdb;

  HomeScreen(this.mockdb);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void callback() {
    setState(() {
          print("Test");
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Willkommen zum Homescreen!',
              style: TextStyle(fontSize: 24),
            ),            SizedBox(height: 25),

            ElevatedButton(onPressed: () {
              setState(() {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                 NewProductScreen(widget.mockdb, callback)),
                            ),
                          );       
                            });
              
            }, child: Text("Neues Produkt hinzufügen"),),
            SizedBox(height: 25),
            SizedBox(
              height: 600,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: widget.mockdb.getAllProduct().length,
                itemBuilder: (context, index) {
                  Product product = widget.mockdb.getAllProduct()[index];
                  return Card(
                    child: ListTile(
                        title: Text(product.title),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                  DetailScreenProduct(product)),
                            ),
                          );
                        }),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
