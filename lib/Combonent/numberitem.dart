import 'package:flutter/material.dart';
import 'package:languageapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class listItem extends StatelessWidget {
  const listItem({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 194, 136, 0),
      height: 110,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 241, 226),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
