import '../domain/user.dart';
import '../features/products/product.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Simulierte Datenbank
  User currUser = User(
    uid: "1",
    email: "curr@email.com",
    userName: "currUser",
    password: "123",
    birthday: DateTime.now(),
    products: [],
  );

  List<Product> products = [
    Product(
      id: '1',
      sellerUid: '1',
      title: "Toller Tisch",
      description: "Wie neu",
      isSwap: true,
      isReserved: false,
      pictures: [],
    ),
    Product(
      id: '2',
      sellerUid: '1',
      title: "Kaputten Stuhl",
      description: "Wie neu",
      isSwap: true,
      isReserved: false,
      pictures: [],
    ),
    Product(
      id: '3',
      sellerUid: '1',
      title: "Runder Reifen",
      description: "Wie neu",
      isSwap: true,
      isReserved: false,
      pictures: [],
    ),
  ];

  @override
  void addProduct(Product product) {
    products.add(product);
  }

  @override
  void deleteProduct(Product product) {
    products.remove(product);
  }

  @override
  Future<List<Product>> getAllProduct() {
    // TODO: implement getAllProduct
    throw UnimplementedError();
  }
}
