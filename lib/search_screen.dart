import 'package:flutter/material.dart';
import 'custom_swipe_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buscar")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwipeButton(
              text: "Buscar productos",
              icon: Icons.search,
              colors: [Colors.blueAccent, Colors.cyan],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Buscando productos...")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomSwipeButton(
              text: "Filtrar resultados",
              icon: Icons.filter_alt,
              colors: [Colors.indigo, Colors.deepPurple],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Aplicando filtros...")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
