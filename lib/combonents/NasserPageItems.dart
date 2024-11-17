import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quraan/combonents/models.dart';

class nasserItems extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();
  final nasserProfail nasserItemsObj;

  nasserItems({super.key, required this.nasserItemsObj});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 350,
        height: 100,
        color: Colors.indigo,
        child: Row(
          children: [
            IconButton(
                splashColor: Colors.black,
                onPressed: () async {
                  try {
                    await player.play(AssetSource(nasserItemsObj.sound));
                  } catch (e) {
                    print('the exception is: $e');
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                )),
            IconButton(
              onPressed: () async {
                await player.stop();
              },
              icon: const Icon(
                Icons.stop,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () async {
                await player.pause();
              },
              icon: const Icon(
                Icons.pause,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            Text(
              nasserItemsObj.name,
              style: const TextStyle(
                fontFamily: 'Aref Ruqaa Ink',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
