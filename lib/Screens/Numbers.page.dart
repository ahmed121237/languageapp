import 'package:flutter/material.dart';
import 'package:languageapp/Combonent/numberitem.dart';
import 'package:languageapp/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      image: "assets/images/numbers/number_one.png",
      enName: "One",
      jpName: "ichi",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_two.png",
      enName: "Two",
      jpName: "ni",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_three.png",
      enName: "Three",
      jpName: "san",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_four.png",
      enName: "Four",
      jpName: "yon",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_five.png",
      enName: "Five",
      jpName: "go",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_six.png",
      enName: "Six",
      jpName: "roku",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_seven.png",
      enName: "Seven",
      jpName: "nana",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_eight.png",
      enName: "Eight",
      jpName: "hachi",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_nine.png",
      enName: "Nine",
      jpName: "kyu",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_ten.png",
      enName: "Ten",
      jpName: "ju",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Numbers",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFFB75E), Color(0xffED8F03)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: listItem(number: numbers[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
