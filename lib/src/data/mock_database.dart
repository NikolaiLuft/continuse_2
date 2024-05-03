import '../domain/product.dart';
import '../domain/user.dart';
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

  List<Product> products = [];

  @override
  void addProduct(Product product) {
    currUser.products.add(product);
    products.add(product);
  }

  @override
  void deleteProduct(Product product) {
    currUser.products.remove(product);
    products.remove(product);
  }

  List<Product> getAllProduct() {
    return products;
  }
}
