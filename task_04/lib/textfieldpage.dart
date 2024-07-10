import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget{
   final TextEditingController  controller;
  final String hintText;
  final bool obscureText;
  final icon;
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
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),borderRadius:BorderRadius.circular(28),
          ),hoverColor: Colors.white10,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),borderRadius: BorderRadius.circular(28),
          ),
          filled: true,
          fillColor: Colors.black87,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade800),
          icon:icon,
        ),style: TextStyle(color: Colors.white54),
      ),
    );
  }
}