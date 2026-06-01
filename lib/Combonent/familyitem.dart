import 'package:flutter/material.dart';
import 'package:languageapp/models/family.dart';

import 'package:audioplayers/audioplayers.dart';

class Familyitem extends StatelessWidget {
  Familyitem({super.key, required this.family});
  final AudioPlayer player = AudioPlayer();
  final FamilyMember family;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 194, 136, 0),
      height: 110,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 241, 226),
            child: Image.asset(family.avatarAsset),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  family.enrelation,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  family.jprlation,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(),

          IconButton(
            onPressed: () async {
              await player.play(AssetSource(family.sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
