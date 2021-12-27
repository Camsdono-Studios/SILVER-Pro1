import 'package:flutter/material.dart';
import 'package:silver_maths/Screens/RightAngleTri/pythagoras/pythoption.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/trigooption.dart';

import '../../main.dart';

class RightAngleTriangleScreen extends StatelessWidget {
  const RightAngleTriangleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: Text("Right Angle Triangle Options"),
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
                  MaterialPageRoute(builder: (context) => TrigonemtryOptionsScreen()),
                );
              },
              child: const Text('Trigonometry'),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PythagorasOptionsScreen()),
                );
              },
              child: const Text('Pythagoras Theorem'),
            ),
            SizedBox(height: 10),

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
            SizedBox(height: 10),
      ],

      ),
      ),
    );
  }
}