import 'package:flutter/material.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/tan/adjacentwork.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/tan/anglework.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/trigooption.dart';
import 'dart:math';

import 'tan/oppositework.dart';

class TanScreen extends StatelessWidget {
  const TanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: Text("Tan Options"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TanOppositeWorkingScreen()),
                );
              },
              child: const Text('Opposite'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TanAdjacentWorkingScreen()),
                );
              },
              child: const Text('Adjacent'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TanAngleWorkingScreen()),
                );
              },
              child: const Text('Angle'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrigonemtryOptionsScreen()),
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
