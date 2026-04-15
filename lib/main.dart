import 'package:flutter/material.dart';
import 'screens/discover_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(MiniKatalogApp());
}

class MiniKatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Katalog',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => DiscoverScreen(),
        '/detail': (context) => ProductDetailScreen(),
        '/cart': (context) => CartScreen(),
      },
    );
  }
}
