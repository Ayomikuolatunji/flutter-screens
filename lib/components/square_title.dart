import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  const SquareTitle(
      {super.key, required this.imagePath, required this.height, this.onTap});

  final String imagePath;
  final double height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        child: Image.asset(
          imagePath,
          height: height,
        ),
      ),
    );
  }
}
