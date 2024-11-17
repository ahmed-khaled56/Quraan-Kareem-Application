import 'package:flutter/material.dart';
import 'package:quraan/combonents/HomePageItems.dart';
import 'package:quraan/combonents/models.dart';
import 'package:quraan/screens/AbdalbasetPage.dart';
import 'package:quraan/screens/DossariPage.dart';
import 'package:quraan/screens/HossaryPage.dart';
import 'package:quraan/screens/MaherPage.dart';
import 'package:quraan/screens/MenshawyPage.dart';
import 'package:quraan/screens/NasserPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<profile> profilesList = const [
    profile(
        image: 'assets/images/Abdalbaset/abdalbaset.jpg',
        name: 'عبدالباسط عبدالصمد'),
    profile(image: 'assets/images/Dosari/dossari.webp', name: 'ياسر الدوسري'),
    profile(image: 'assets/images/Hossary/hoassary.jpeg', name: 'الحصري'),
    profile(image: 'assets/images/Maher/maher.jpeg', name: 'ماهر المعقلي'),
    profile(
        image: 'assets/images/Menshawy/menshawy.jpg',
        name: 'محمد صديق المنشاوي'),
    profile(image: 'assets/images/Nasser/nasser.jpg', name: 'ناصر القطامي'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Quraan Kareem (تلاوة)',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xff004a4a),
      body: Column(
        children: [
          const Image(image: AssetImage('assets/images/moshaf.jpg')),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              width: 350,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      'بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ',
                      style: TextStyle(
                        fontFamily: 'Aref Ruqaa Ink',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'ما تيسر من القران الكريم',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const abdalbasetPage();
                        }));
                      },
                      profileObj: profilesList[0],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const dossariPage();
                        }));
                      },
                      profileObj: profilesList[1],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const hossaryiPage();
                        }));
                      },
                      profileObj: profilesList[2],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const maherPage();
                        }));
                      },
                      profileObj: profilesList[3],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const menshawyPage();
                        }));
                      },
                      profileObj: profilesList[4],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    homeItems(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const nasserPage();
                        }));
                      },
                      profileObj: profilesList[5],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
