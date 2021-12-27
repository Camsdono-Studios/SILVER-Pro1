import 'package:flutter/material.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/sinscreen.dart';
import 'package:silver_maths/Screens/Volume/volcuboid.dart';

import '../../main.dart';


class VolumeOptionsScreen extends StatelessWidget {
  const VolumeOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volume Options"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolCubiodWorkingScreen()),
                );
              },
              child: const Text('Cuboid'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
              },
              child: const Text('In Dev'),
            ),
            const SizedBox(height: 10),


            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: const Text('Back'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}