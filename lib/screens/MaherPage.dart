import 'package:flutter/material.dart';

import 'package:quraan/combonents/MaherpageItems.dart';
import 'package:quraan/combonents/models.dart';

class maherPage extends StatelessWidget {
  final List<maherProfail> maherProfailList = const [
    maherProfail(
      name: 'سورة الفاتحة',
      sound: "sounds/Maher/001.mp3",
    ),
    maherProfail(
      name: 'سورة النصر',
      sound: "sounds/Maher/110.mp3",
    ),
    maherProfail(
      name: 'سورة المسد',
      sound: "sounds/Maher/112.mp3",
    ),
    maherProfail(
      name: 'سورة الاخلاص',
      sound: "sounds/Maher/112.mp3",
    ),
    maherProfail(
      name: 'سورة الفلق',
      sound: "sounds/Maher/113.mp3",
    ),
    maherProfail(
      name: 'سورة الناس',
      sound: "sounds/Maher/114.mp3",
    ),
  ];

  const maherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          '        الشيخ:      ماهر المعقلي',
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
          maherItems(
            maherProfailObj: maherProfailList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          maherItems(
            maherProfailObj: maherProfailList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          maherItems(
            maherProfailObj: maherProfailList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          maherItems(
            maherProfailObj: maherProfailList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          maherItems(
            maherProfailObj: maherProfailList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          maherItems(
            maherProfailObj: maherProfailList[5],
          ),
        ]),
      ),
    );
  }
}
