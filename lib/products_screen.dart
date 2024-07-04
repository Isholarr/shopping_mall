import 'package:flutter/material.dart';
import 'checkout_screen.dart';

class ProductsScreen extends StatelessWidget {
  final List<String> products = ['Product 1', 'Product 2', 'Product 3'];

  ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                CheckoutScreen.addItem(products[index]);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${products[index]} added to checkout'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
