import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: cartItems.isEmpty
          ? Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart_outlined, size: 64, color: Colors.grey),
                Text("Your cart is empty", style: TextStyle(fontSize: 18, color: Colors.grey)),
              ],
            ))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(cartItems[index].image, width: 50),
                  title: Text(cartItems[index].name),
                  subtitle: Text("\$${cartItems[index].price}"),
                );
              },
            ),
      bottomNavigationBar: cartItems.isNotEmpty ? Container(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Checkout", style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: Size(double.infinity, 50)),
        ),
      ) : null,
    );
  }
}
