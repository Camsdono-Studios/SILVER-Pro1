import 'package:flutter/material.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/sinscreen.dart';

import '../trioption.dart';
import 'longside.dart';
import 'shortside.dart';

class PythagorasOptionsScreen extends StatelessWidget {
  const PythagorasOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: Text("Pythagoras Options"),
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
                  MaterialPageRoute(builder: (context) => LongSideWorkingScreen()),
                );
              },
              child: const Text('Long Side'),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShortSideWorkingScreen()),
                );
              },
              child: const Text('Short Side'),
            ),
            SizedBox(height: 10),


            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RightAngleTriangleScreen()),
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