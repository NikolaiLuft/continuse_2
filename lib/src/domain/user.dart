import 'product.dart';

class User {
  String uid;
  String email;
  String userName;
  String password;
  DateTime birthday;
  List<Product> products;

  // Konstruktor
  User({
    required this.uid,
    required this.email,
    required this.userName,
    required this.password,
    required this.birthday,
    required this.products,
  });

}
