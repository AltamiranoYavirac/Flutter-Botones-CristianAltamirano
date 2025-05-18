import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Perfil', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Icon(Icons.person, size: 100, color: Colors.purple),
        ],
      ),
    );
  }
}
