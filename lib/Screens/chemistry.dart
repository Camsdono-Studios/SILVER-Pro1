import 'package:flutter/material.dart';
import '../../main.dart';
import 'Chemistry/rateofreaction.dart';
import 'RightAngleTri/trioption.dart';
import 'SurfaceArea/suroptions.dart';


class ChemistryScreen extends StatelessWidget {
  const ChemistryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Chemistry Options"),
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
                  MaterialPageRoute(builder: (context) => RateofReactionWorkingScreen()),
                );
              },
              child: const Text('Rate of reaction'),
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