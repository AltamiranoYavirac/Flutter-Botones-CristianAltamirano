import 'package:flutter/material.dart';
import 'custom_swipe_button.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favoritos")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwipeButton(
              text: "Ver favoritos",
              icon: Icons.favorite,
              colors: [Colors.pink, Colors.pinkAccent],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Mostrando favoritos")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomSwipeButton(
              text: "Limpiar lista",
              icon: Icons.delete,
              colors: [Colors.grey, Colors.black26],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Lista de favoritos vaciada")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
