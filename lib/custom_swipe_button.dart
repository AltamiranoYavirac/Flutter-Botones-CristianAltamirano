import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class CustomSwipeButton extends StatelessWidget {
  final String text;
  final Future<void> Function()? onSubmit;
  final IconData icon;
  final List<Color> colors;

  const CustomSwipeButton({
    super.key,
    required this.text,
    required this.onSubmit,
    this.icon = Icons.arrow_forward,
    this.colors = const [Colors.blue, Colors.lightBlueAccent],
  });

  @override
  Widget build(BuildContext context) {
    final Color outer = (colors.length > 1 ? colors.last : colors.first).withOpacity(0.8);

    return SlideAction(
      elevation: 4,
      borderRadius: 12,
      innerColor: colors.first,
      outerColor: outer,
      sliderButtonIcon: Icon(icon, color: Colors.white),
      text: text,
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      onSubmit: onSubmit, 
    );
  }
}
