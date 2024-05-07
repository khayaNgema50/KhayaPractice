import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       Row(
        children: [
          Text("Email address"),
          TextField()
        ],
       ),
              Row(
        children: [
          Text("Password"),
          TextField()
        ],
       ),
    ],);
  }
}