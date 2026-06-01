import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String text;
  Color color;
  VoidCallback? onTap;

  Category({Key? key, required this.text, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
