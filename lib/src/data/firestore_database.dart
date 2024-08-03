import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:continuse_2/src/data/database_repository.dart';
import 'package:continuse_2/src/features/products/product.dart';

class FirestoreDatabase implements DatabaseRepository {
  final FirebaseFirestore firebaseFirestore;

  FirestoreDatabase(this.firebaseFirestore);

  @override
  void addProduct(Product product) {
    firebaseFirestore.collection('products').add(product.toMap());
  }

  @override
  void deleteProduct(Product product) {
    firebaseFirestore.collection('products').doc(product.id).delete();
  }

  @override
  Future<List<Product>> getAllProduct() async {
    QuerySnapshot snapshot =
        await firebaseFirestore.collection('Products').get();
    return snapshot.docs
        .map((doc) => Product.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
