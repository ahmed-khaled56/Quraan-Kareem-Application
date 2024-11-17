import 'package:flutter/material.dart';
import 'package:quraan/combonents/models.dart';
import 'package:quraan/screens/AbdalbasetPage.dart';

class homeItems extends StatelessWidget {
  final profile profileObj;
  final VoidCallback? ontap;

  const homeItems({super.key, required this.profileObj, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 150,
        height: 150,
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.blue,
              ),
              child: ClipOval(
                child: Image.asset(
                  profileObj.image, // Replace with your asset image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              ':الشيخ',
              style: TextStyle(
                fontFamily: 'Aref Ruqaa Ink',
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            GestureDetector(
              onTap: ontap,
              child: Text(
                profileObj.name,
                style: const TextStyle(
                  fontFamily: 'Aref Ruqaa Ink',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
