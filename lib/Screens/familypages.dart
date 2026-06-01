import 'package:flutter/material.dart';
import 'package:languageapp/Combonent/familyitem.dart';
import 'package:languageapp/models/family.dart';

class Family extends StatelessWidget {
  Family({super.key});
  final List<FamilyMember> familyMembers = [
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_daughter.png",
      enrelation: "Daughter",
      jprlation: "musume",
      sound: "sounds/family_members/daughter.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_father.png",
      enrelation: "Father",
      jprlation: "chichi",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_grandfather.png",
      enrelation: "Grandfather",
      jprlation: "ojiisan",
      sound: "sounds/family_members/grand father.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_grandmother.png",
      enrelation: "Grandmother",
      jprlation: "obaasan",
      sound: "sounds/family_members/grand mother.wav",
    ),

    FamilyMember(
      avatarAsset: "assets/images/family_members/family_mother.png",
      enrelation: "Mother",
      jprlation: "haha",
      sound: "sounds/family_members/mother.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_older_brother.png",
      enrelation: "Older Brother",
      jprlation: "ani",
      sound: "sounds/family_members/older brother.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_older_sister.png",
      enrelation: "Older Sister",
      jprlation: "ane",
      sound: "sounds/family_members/older sister.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_son.png",
      enrelation: "Son",
      jprlation: "musuko",
      sound: "sounds/family_members/son.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_younger_brother.png",
      enrelation: "Younger Brother",
      jprlation: "otouto",
      sound: "sounds/family_members/younger brother.wav",
    ),
    FamilyMember(
      avatarAsset: "assets/images/family_members/family_younger_sister.png",
      enrelation: "Younger Sister",
      jprlation: "imouto",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Familyitem(family: familyMembers[index]);
        },
      ),
    );
  }
}
