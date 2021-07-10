class Product {
  final int id;
  final String category;
  final int quantity;

  Product({this.id, this.category, this.quantity});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      category: json['category'],
      quantity: json['quantity'],
    );
  }
}
