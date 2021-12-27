import 'package:flutter/material.dart';

import 'Screens/RightAngleTri/trioption.dart';
import 'Screens/Volume/voloptions.dart';
import 'Screens/chemistry.dart';
import 'Screens/maths.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          headline1: TextStyle(
            fontSize: 60.0,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),

      home: HomeView(title: 'SILVER Pro'),
    );
  }
}

class HomeView extends StatelessWidget {
  final String title;

  const HomeView({required this.title});

  get onPress => null;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
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
                      MaterialPageRoute(builder: (context) => ChemistryScreen()),
                    );
                  },
                  child: const Text('Chemistry'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MathScreen()),
                    );
                  },
                  child: const Text('Maths'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                            backgroundColor: Colors.white,
                            content: Text(
                                "Made By: Camsdono Studios" "\n" "Status: In Development" "\n" "Version: V0.03",
                                style: TextStyle(color: Colors.black),
                            )
                        );

                      },
                    );
                  },
                  child: const Text('About'),
                ),
                const SizedBox(height: 10),
              ],
            )
        )

    );
  }
}