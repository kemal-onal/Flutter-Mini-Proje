import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.image, height: 300, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(product.description),
                SizedBox(height: 20),
                Text("Specifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ...product.specifications.map((s) => Text("• $s")).toList(),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  cartItems.add(product);
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${product.name} added to cart!")));
              },
              child: Center(child: Text("Add to Cart", style: TextStyle(color: Colors.white))),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: Size(double.infinity, 50)),
            ),
          )
        ],
      ),
    );
  }
}
