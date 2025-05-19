import 'package:flutter/material.dart';
import 'custom_swipe_button.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carrito")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwipeButton(
              text: "Confirmar pedido",
              icon: Icons.check_circle,
              colors: [Colors.blue, Colors.lightBlue],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pedido confirmado")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomSwipeButton(
              text: "Cancelar pedido",
              icon: Icons.cancel,
              colors: [Colors.red, Colors.redAccent],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pedido cancelado")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
