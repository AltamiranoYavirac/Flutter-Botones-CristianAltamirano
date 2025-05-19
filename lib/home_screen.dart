import 'package:flutter/material.dart';
import 'custom_swipe_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inicio")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwipeButton(
              text: "Ver productos",
              icon: Icons.store,
              colors: [Colors.green, Colors.teal],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Cargando productos...")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomSwipeButton(
              text: "Ver promociones",
              icon: Icons.local_offer,
              colors: [Colors.deepOrange, Colors.orangeAccent],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Mostrando promociones...")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
