class Product {
  // Attributen
  String id;
  String sellerUid;
  String title;
  String description;
  // ist ein Tauschgeschäft
  bool isSwap;
  // Reservierungsstatus
  bool isReserved;
  List<Image> pictures;

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
}

// Klasse gibts dann in Flutter
class Image {}

// TODO Exkurs optionale params
