import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:continuse_2/src/data/database_repository.dart';
import 'package:continuse_2/src/features/products/product.dart';

class FirestoreDatabase implements DatabaseRepository {
  final FirebaseFirestore firebaseFirestore;

  FirestoreDatabase(this.firebaseFirestore);

  @override
  void addProduct(Product product) {
    // TODO: implement addProduct
  }

  @override
  void deleteProduct(Product product) {
    // TODO: implement deleteProduct
  }

  @override
  List<Product> getAllProduct() {
    // TODO: implement getAllProduct
    throw UnimplementedError();
  }
}
