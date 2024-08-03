class Product {
  // Attribute
  String id;
  String sellerUid;
  String title;
  String description;
  // ist ein Tauschgeschäft
  bool isSwap;
  // Reservierungsstatus
  bool isReserved;
  List<String> pictures;

  // Konstruktor
  Product({
    required this.id,
    required this.sellerUid,
    required this.title,
    required this.description,
    required this.isSwap,
    required this.isReserved,
    required this.pictures,
  });

  // Methode zum Konvertieren eines Produkts in ein Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sellerUid': sellerUid,
      'title': title,
      'description': description,
      'isSwap': isSwap,
      'isReserved': isReserved,
      'pictures': pictures,
    };
  }

  // Factory-Methode zum Erstellen eines Produkts aus einem Map
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      sellerUid: map['sellerUid'],
      title: map['title'],
      description: map['description'],
      isSwap: map['isSwap'],
      isReserved: map['isReserved'],
      pictures: List<String>.from(map['pictures'] ?? []),
    );
  }
}
