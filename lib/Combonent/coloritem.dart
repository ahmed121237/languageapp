import 'package:flutter/material.dart';
import 'package:languageapp/models/color.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorItem extends StatelessWidget {
  ColorItem({super.key, required this.color});

  final AudioPlayer player = AudioPlayer();
  final ColorModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 194, 136, 0),
      height: 110,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 241, 226),
            child: Image.asset(color.image),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  color.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  color.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              await player.play(AssetSource(color.sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
