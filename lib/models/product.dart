class Product {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;
  final List<String> specifications;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.specifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      price: json['price'].toDouble(),
      specifications: List<String>.from(json['specifications']),
    );
  }
}

final List<Product> mockProducts = [
  Product(
    id: 1,
    name: "AirPods Pro 2",
    description: "Gelişmiş gürültü engelleme özelliği.",
    image: "https://picsum.photos/400/300",
    price: 249.0,
    specifications: ["2x Active Noise Cancellation", "Spatial Audio"],
  ),
  Product(
    id: 2,
    name: "HomePod Mini",
    description: "Odayı dolduran zengin ses.",
    image: "https://picsum.photos/400/300",
    price: 99.0,
    specifications: ["360-degree audio", "Siri integrated"],
  ),
];

List<Product> cartItems = [];
