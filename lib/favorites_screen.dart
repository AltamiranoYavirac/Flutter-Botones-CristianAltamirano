import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Favoritos', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Icon(Icons.favorite, size: 100, color: Colors.red),
        ],
      ),
    );
  }
}
