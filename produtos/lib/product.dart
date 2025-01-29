class Product {
  final String id;
  final String name;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      description: map['description'],
    );
  }
}
