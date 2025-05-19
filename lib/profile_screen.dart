import 'package:flutter/material.dart';
import 'custom_swipe_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Perfil")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwipeButton(
              text: "Actualizar perfil",
              icon: Icons.update,
              colors: [Colors.orange, Colors.deepOrange],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Perfil actualizado")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomSwipeButton(
              text: "Cerrar sesión",
              icon: Icons.logout,
              colors: [Colors.red, Colors.deepOrangeAccent],
              onSubmit: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Sesión cerrada")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
