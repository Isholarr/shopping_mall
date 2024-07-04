import 'package:flutter/material.dart';
import 'order_successful_screen.dart';

class CheckoutScreen extends StatefulWidget {
  static List<String> checkoutItems = [];

  const CheckoutScreen({super.key});

  static void addItem(String item) {
    checkoutItems.add(item);
  }

  static void removeItem(String item) {
    checkoutItems.remove(item);
  }

  @override
  // ignore: library_private_types_in_public_api
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: ListView.builder(
        itemCount: CheckoutScreen.checkoutItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(CheckoutScreen.checkoutItems[index]),
            trailing: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  CheckoutScreen.removeItem(
                      CheckoutScreen.checkoutItems[index]);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const OrderSuccessfulScreen()),
          );
        },
      ),
    );
  }
}
