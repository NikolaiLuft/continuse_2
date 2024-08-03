import '../features/products/product.dart';

abstract class DatabaseRepository {
  void addProduct(Product product);
  void deleteProduct(Product product);
  Future<List<Product>> getAllProduct();
}
