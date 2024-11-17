import 'package:flutter/material.dart';

import 'package:quraan/combonents/DossariPageItems.dart';
import 'package:quraan/combonents/models.dart';

class dossariPage extends StatelessWidget {
  final List<dossariProfail> dossariProfailList = const [
    dossariProfail(
      name: 'سورة الفاتحة',
      sound: "sounds/Dossari/001.mp3",
    ),
    dossariProfail(
      name: 'سورة النصر',
      sound: "sounds/Dossari/110.mp3",
    ),
    dossariProfail(
      name: 'سورة المسد',
      sound: "sounds/Dossari/111.mp3",
    ),
    dossariProfail(
      name: 'سورة الاخلاص',
      sound: "sounds/Dossari/112.mp3",
    ),
    dossariProfail(
      name: 'سورة الفلق',
      sound: "sounds/Dossari/113.mp3",
    ),
    dossariProfail(
      name: 'سورة الناس',
      sound: "sounds/Dossari/114.mp3",
    ),
  ];

  const dossariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'الشيخ:   ياسر الدوسري',
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
          dossariItems(
            dossariProfilObj: dossariProfailList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          dossariItems(
            dossariProfilObj: dossariProfailList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          dossariItems(
            dossariProfilObj: dossariProfailList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          dossariItems(
            dossariProfilObj: dossariProfailList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          dossariItems(
            dossariProfilObj: dossariProfailList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          dossariItems(
            dossariProfilObj: dossariProfailList[5],
          ),
        ]),
      ),
    );
  }
}
