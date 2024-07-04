import 'package:flutter/material.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Successful'),
      ),
      body: const Center(
        child: Text(
          'Your order has been placed successfully!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
