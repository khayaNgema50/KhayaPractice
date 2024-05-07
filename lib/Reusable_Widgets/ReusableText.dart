
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: const TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.bold,
   color: Colors.brown,
    ));
  }
}