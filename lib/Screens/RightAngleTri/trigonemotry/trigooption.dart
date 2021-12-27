import 'package:flutter/material.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/sinscreen.dart';
import 'package:silver_maths/Screens/RightAngleTri/trigonemotry/tanscreen.dart';

import '../trioption.dart';
import 'cosscreen.dart';

class TrigonemtryOptionsScreen extends StatelessWidget {
  const TrigonemtryOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: Text("Trigonometry Options"),
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
              MaterialPageRoute(builder: (context) => TanScreen()),
            );
          },
          child: const Text('Tan'),
        ),
        SizedBox(height: 10),

        ElevatedButton(
          style: style,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SinScreen()),
            );
          },
          child: const Text('Sin'),
        ),
        SizedBox(height: 10),

        ElevatedButton(
          style: style,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CosScreen()),
            );
          },
          child: const Text('Cos'),
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