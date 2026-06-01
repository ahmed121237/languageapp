import 'package:flutter/material.dart';
import 'package:languageapp/Combonent/coloritem.dart';
import 'package:languageapp/models/color.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<ColorModel> colors = [
    ColorModel(
      image: "assets/images/colors/color_black.png",
      enName: "Black",
      jpName: "kuro",
      sound: "sounds/colors/black.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_brown.png",
      enName: "Brown",
      jpName: "chairo",
      sound: "sounds/colors/brown.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      enName: "Dusty Yellow",
      jpName: "hokori ppoi kiiro",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_gray.png",
      enName: "Gray",
      jpName: "haiiro",
      sound: "sounds/colors/gray.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_green.png",
      enName: "Green",
      jpName: "midori",
      sound: "sounds/colors/green.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_red.png",
      enName: "Red",
      jpName: "aka",
      sound: "sounds/colors/red.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_white.png",
      enName: "White",
      jpName: "shiro",
      sound: "sounds/colors/white.wav",
    ),
    ColorModel(
      image: "assets/images/colors/yellow.png",
      enName: "Yellow",
      jpName: "kiiro",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(color: colors[index]);
        },
      ),
    );
  }
}
