import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Buscar', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Icon(Icons.search, size: 100, color: Colors.orange),
        ],
      ),
    );
  }
}
