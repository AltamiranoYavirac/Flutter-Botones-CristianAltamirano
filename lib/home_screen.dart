import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Pantalla de Inicio', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Icon(Icons.home, size: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
