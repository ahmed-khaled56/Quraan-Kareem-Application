import 'package:flutter/material.dart';
import 'package:quraan/combonents/AbdalbasetPageItems.dart';
import 'package:quraan/combonents/models.dart';
import 'package:audioplayers/audioplayers.dart';

class abdalbasetPage extends StatelessWidget {
  final List<abdalbasetProfile> abdalbasetProfileList = const [
    abdalbasetProfile(
      name: 'سورة الفاتحة',
      sound: "sounds/Abdalbaset/001.mp3",
    ),
    abdalbasetProfile(
      name: 'سورة النصر',
      sound: "sounds/Abdalbaset/110.mp3",
    ),
    abdalbasetProfile(
      name: 'سورة المسد',
      sound: "sounds/Abdalbaset/111.mp3",
    ),
    abdalbasetProfile(
      name: 'سورة الاخلاص',
      sound: "sounds/Abdalbaset/112 .mp3",
    ),
    abdalbasetProfile(
      name: 'سورة الفلق',
      sound: "sounds/Abdalbaset/113.mp3",
    ),
    abdalbasetProfile(
      name: 'سورة الناس',
      sound: "sounds/Abdalbaset/114.mp3",
    ),
  ];

  const abdalbasetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'الشيخ:    عبد الباسط عبد الصمد',
          style: TextStyle(
            fontFamily: 'Aref Ruqaa Ink',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 10,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          abdalbasetItems(
            abdalbasetProfileObj: abdalbasetProfileList[5],
          ),
        ]),
      ),
    );
  }
}
