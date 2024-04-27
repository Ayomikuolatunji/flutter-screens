import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
            fillColor: Colors.grey.shade200,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        controller: controller,
        style: const TextStyle(),
      ),
    );
  }
}
