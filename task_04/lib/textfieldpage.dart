import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;
  const TextFieldPage({
    super.key,
    required this.icon,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            spreadRadius: 3,
            blurRadius: 12,
            color: Colors.teal,
            offset:Offset(-3,-3)
          )]
        ),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Colors.white10,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.black,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade700),
            icon: icon,
          ),
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
