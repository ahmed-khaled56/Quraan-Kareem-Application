import 'package:flutter/material.dart';

import 'package:quraan/combonents/NasserPageItems.dart';
import 'package:quraan/combonents/models.dart';

class nasserPage extends StatelessWidget {
  final List<nasserProfail> nasserPageList = const [
    nasserProfail(
      name: 'سورة الفاتحة',
      sound: "sounds/Nasser/001.mp3",
    ),
    nasserProfail(
      name: 'سورة النصر',
      sound: "sounds/Nasser/110.mp3",
    ),
    nasserProfail(
      name: 'سورة المسد',
      sound: "sounds/Nasser/111.mp3",
    ),
    nasserProfail(
      name: 'سورة الاخلاص',
      sound: "sounds/Nasser/112.mp3",
    ),
    nasserProfail(
      name: 'سورة الفلق',
      sound: "sounds/Nasser/113.mp3",
    ),
    nasserProfail(
      name: 'سورة الناس',
      sound: "sounds/Nasser/114.mp3",
    ),
  ];

  const nasserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text(
          '      الشيخ:   ناصر القطامي',
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
          nasserItems(
            nasserItemsObj: nasserPageList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          nasserItems(
            nasserItemsObj: nasserPageList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          nasserItems(
            nasserItemsObj: nasserPageList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          nasserItems(
            nasserItemsObj: nasserPageList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          nasserItems(
            nasserItemsObj: nasserPageList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          nasserItems(
            nasserItemsObj: nasserPageList[5],
          ),
        ]),
      ),
    );
  }
}
