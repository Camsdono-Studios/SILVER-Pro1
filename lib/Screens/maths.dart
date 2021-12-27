import 'package:flutter/material.dart';
import '../../main.dart';
import 'Maths/StraightLine/StraightLineCalculations.dart';
import 'RightAngleTri/trioption.dart';
import 'SurfaceArea/suroptions.dart';


class MathScreen extends StatelessWidget {
  const MathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Maths Options"),
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
                  MaterialPageRoute(builder: (context) => SurfaceAreaOptionsScreen()),
                );
              },
              child: const Text('Surface Area'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RightAngleTriangleScreen()),
                );
              },
              child: const Text('Right Angle Triangle'),
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