import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
import 'package:flutter/services.dart';
import 'package:angles/angles.dart';


void main() => runApp(const SinAngleWorkingScreen());


// Define a custom Form widget.
class SinAngleWorkingScreen extends StatefulWidget {
  const SinAngleWorkingScreen({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<SinAngleWorkingScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final oppositeController = TextEditingController();
  final adjacentController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    adjacentController.dispose();
    oppositeController.dispose();
    super.dispose();
  }
  var answer1 = 0.0;
  var opposite = 0.0;
  var adjacent = 0.0;
  Angle answer2 = const Angle.degrees(0);

  void calculate() {
    //Calculate What needs to be calculated
    opposite = double.parse(oppositeController.text);
    adjacent = double.parse(adjacentController.text);
    answer1 = opposite / adjacent;
    answer1.toString();
    answer2 = Angle.asin(answer1);
    answer2.toString();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sin Angle'),
      ),
      body: Padding(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: oppositeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the opposite?',
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
                  hintText: 'What is the hypotenuse?',
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
                              "Sin x° = " + oppositeController.text + " ÷ " + adjacentController.text +
                                  "\n" +
                                  "Sin x° = " + answer1.toStringAsFixed(3) +
                                  "\n" +
                                  "Sin(-1)" + answer1.toStringAsFixed(3) + " = x°"
                                  "\n" +
                                  "x° = " + answer2.toString()

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
        padding: const EdgeInsets.all(16.0),

      ),

    );

  }
}