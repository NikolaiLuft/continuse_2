import '../features/products/product.dart';

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

  // toMap Methode
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'userName': userName,
      'password': password,
      'birthday': birthday.toIso8601String(),
      'products': products.map((product) => product.toMap()).toList(),
    };
  }

  // fromMap Methode
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      email: map['email'],
      userName: map['userName'],
      password: map['password'],
      birthday: DateTime.parse(map['birthday']),
      products:
          List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
    );
  }
}
