import 'package:continuse_2/src/data/auth_repository.dart';
import 'package:continuse_2/src/data/database_repository.dart'; // Anpassen des Pfades zur DatabaseRepository
import 'package:continuse_2/src/features/authentification/presentation/loginscreen.dart';
import 'package:continuse_2/src/features/products/presentation/detail_screen_product.dart';
import 'package:continuse_2/src/features/products/presentation/new_product_screen.dart';
import 'package:continuse_2/src/features/products/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Product>> productlist;

  void callback() {
    setState(() {
      debugPrint("Test");
    });
  }

  @override
  void initState() {
    super.initState();
    productlist = context.read<DatabaseRepository>().getAllProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        leadingWidth: 200,
        actions: [
          IconButton(
            onPressed: () async {
              // Abmeldung und Navigation zur Login-Seite
              await context.read<AuthRepository>().logout();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            icon: const Icon(
              Icons.logout,
              size: 24,
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: productlist,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Fehler beim Laden der Produkte'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Keine Produkte verfügbar'));
          }

          final products = snapshot.data!;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Willkommen zum Homescreen!',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewProductScreen(),
                      ),
                    );
                  },
                  child: const Text("Neues Produkt hinzufügen"),
                ),
                const SizedBox(height: 25),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      Product product = products[index];
                      return Card(
                        child: ListTile(
                          title: Text(product.title),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreenProduct(product),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
