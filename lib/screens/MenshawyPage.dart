import 'package:flutter/material.dart';

import 'package:quraan/combonents/DossariPageItems.dart';
import 'package:quraan/combonents/HossaryPageItems.dart';
import 'package:quraan/combonents/MenshawyPageitems.dart';
import 'package:quraan/combonents/models.dart';

class menshawyPage extends StatelessWidget {
  final List<menshawyProfail> menshawyProfailList = const [
    menshawyProfail(
      name: 'سورة الفاتحة',
      sound: "sounds/Menshawy/001.mp3",
    ),
    menshawyProfail(
      name: 'سورة النصر',
      sound: "sounds/Menshawy/110.mp3",
    ),
    menshawyProfail(
      name: 'سورة المسد',
      sound: "sounds/Menshawy/111.mp3",
    ),
    menshawyProfail(
      name: 'سورة الاخلاص',
      sound: "sounds/Menshawy/112.mp3",
    ),
    menshawyProfail(
      name: 'سورة الفلق',
      sound: "sounds/Menshawy/114.mp3",
    ),
    menshawyProfail(
      name: 'سورة الناس',
      sound: "sounds/Hossary/114.mp3",
    ),
  ];

  const menshawyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          ' الشيخ:  محمد صديق المنشاوي',
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
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[0],
          ),
          const SizedBox(
            height: 3,
          ),
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[1],
          ),
          const SizedBox(
            height: 3,
          ),
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[2],
          ),
          const SizedBox(
            height: 3,
          ),
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[3],
          ),
          const SizedBox(
            height: 3,
          ),
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[4],
          ),
          const SizedBox(
            height: 3,
          ),
          menshawyItems(
            menshawyProfailObj: menshawyProfailList[5],
          ),
        ]),
      ),
    );
  }
}
