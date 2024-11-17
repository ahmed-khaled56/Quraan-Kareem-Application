import 'package:flutter/material.dart';

import 'package:quraan/combonents/DossariPageItems.dart';
import 'package:quraan/combonents/HossaryPageItems.dart';
import 'package:quraan/combonents/models.dart';

class hossaryiPage extends StatelessWidget {
  final List<hossaryProfail> hassaryProfailList = const [
    hossaryProfail(
      name: 'سورة الفاتحة',
      sound: "sounds/Hossary/001.mp3",
    ),
    hossaryProfail(
      name: 'سورة النصر',
      sound: "sounds/Hossary/110.mp3",
    ),
    hossaryProfail(
      name: 'سورة المسد',
      sound: "sounds/Hossary/111.mp3",
    ),
    hossaryProfail(
      name: 'سورة الاخلاص',
      sound: "sounds/Hossary/112.mp3",
    ),
    hossaryProfail(
      name: 'سورة الفلق',
      sound: "sounds/Hossary/113.mp3",
    ),
    hossaryProfail(
      name: 'سورة الناس',
      sound: "sounds/Hossary/114.mp3",
    ),
  ];

  const hossaryiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          '        الشيخ:      الحصري',
          style: TextStyle(
            fontFamily: 'Aref Ruqaa Ink',
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 10,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          hossaryItems(
            hossaryProfailObj: hassaryProfailList[5],
          ),
        ]),
      ),
    );
  }
}
