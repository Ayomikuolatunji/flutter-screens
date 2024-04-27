import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
