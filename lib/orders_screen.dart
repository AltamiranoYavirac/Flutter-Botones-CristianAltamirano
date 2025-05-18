import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Mis Pedidos', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Icon(Icons.shopping_cart, size: 100, color: Colors.green),
        ],
      ),
    );
  }
}
