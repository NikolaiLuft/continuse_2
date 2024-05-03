import '../domain/product.dart';

abstract class DatabaseRepository {
  void addProduct(Product product);
  void deleteProduct(Product product);
  List<Product> getAllProduct();
}
