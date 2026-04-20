import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://picsum.photos/400/300", height: 150, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(hintText: "Search products...", prefixIcon: Icon(Icons.search), border: OutlineInputBorder())),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 0.75),
              itemCount: mockProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: mockProducts[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
