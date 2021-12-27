import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
import 'package:flutter/services.dart';
import 'package:angles/angles.dart';


void main() => runApp(const ShortSideWorkingScreen());


// Define a custom Form widget.
class ShortSideWorkingScreen extends StatefulWidget {
  const ShortSideWorkingScreen({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<ShortSideWorkingScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final hypotenuseController = TextEditingController();
  final adjacentController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    adjacentController.dispose();
    hypotenuseController.dispose();
    super.dispose();
  }
  var answer = 0.0;
  var answer2 = 0.0;
  var hypotenuse = 0.0;
  var adjacent = 0.0;
  var working1 = 0.0;
  var working2 = 0.0;

  void calculate() {
    //Calculate What needs to be calculated
    hypotenuse = double.parse(hypotenuseController.text);
    adjacent = double.parse(adjacentController.text);
    answer = hypotenuse * hypotenuse - adjacent * adjacent;
    answer.toString();
    answer2 = sqrt(answer);
    answer2.toString();

    working1 = hypotenuse * hypotenuse;
    working2 = adjacent * adjacent;
  }



  @override
  Widget build(BuildContext context) {
    //adjacent = double.parse(adjacentController.text);
    //angle = tan(double.parse(angleController.text) * pi / 180);
    //answer = adjacent * angle;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Pythagoras Short Side'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: hypotenuseController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the hypotenuse?',
                  filled: true,
                  fillColor: Colors.black,
                  hintStyle: TextStyle(color: Colors.white),
                ),
                keyboardType: TextInputType.none,
              ),
            ),
            const SizedBox(height: 10),

            Flexible(
              child: TextField(
                controller: adjacentController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the adjacent?',
                  filled: true,
                  fillColor: Colors.black,
                  hintStyle: TextStyle(color: Colors.white),
                ),
                keyboardType: TextInputType.none,
              ),
            ),
            const SizedBox(height: 450),

            Flexible(
              child: FloatingActionButton(
                // When the user presses the button, show an alert dialog containing
                // the text that the user has entered into the text field.
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      calculate();
                      return AlertDialog(
                          backgroundColor: Colors.white,
                          content: Text(
                            hypotenuseController.text + "²" + " - " + adjacentController.text + "²" + " = b²"  + "\n" +
                                working1.toString() + " - " + working2.toString() + " = b²" + "\n" +
                                answer.toString() + " = b²" + "\n" +
                                "√" + answer.toString() + " = b²" + "\n" +
                                "b = " + answer2.toStringAsFixed(1),
                            style: const TextStyle(color: Colors.black),
                          )
                      );
                    },
                  );

                },

                tooltip: 'Work Out The Total',
                child: const Text(
                  '=',
                  style: TextStyle(
                    fontSize: 40.0, // insert your font size here
                  ),
                ),
              ),
            )
          ],

        ),

      ),

    );

  }
}