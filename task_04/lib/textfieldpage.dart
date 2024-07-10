import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget{
   final TextEditingController  controller;
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
      padding: const EdgeInsets.only(top:4.0,left: 22,right: 18),
      child:TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),borderRadius:BorderRadius.circular(12),
          ),hoverColor: Colors.white10,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.indigoAccent),borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.black,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade700),
          icon:icon,
        ),style: const TextStyle(color: Colors.white70),
      ),
    );
  }
}