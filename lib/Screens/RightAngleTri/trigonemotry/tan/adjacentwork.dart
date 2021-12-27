import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
import 'package:flutter/services.dart';
import 'package:angles/angles.dart';


void main() => runApp(const TanAdjacentWorkingScreen());


// Define a custom Form widget.
class TanAdjacentWorkingScreen extends StatefulWidget {
  const TanAdjacentWorkingScreen({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<TanAdjacentWorkingScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final angleController = TextEditingController();
  final adjacentController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    adjacentController.dispose();
    angleController.dispose();
    super.dispose();
  }
  var answer = 0.0;
  var angle = 0.0;
  var adjacent = 0.0;

  void calculate() {
    //Calculate What needs to be calculated
    angle = tan(double.parse(angleController.text) * pi / 180);
    adjacent = double.parse(adjacentController.text);
    answer = adjacent * angle;
    answer.toString();
  }



  @override
  Widget build(BuildContext context) {
    //adjacent = double.parse(adjacentController.text);
    //angle = tan(double.parse(angleController.text) * pi / 180);
    //answer = adjacent * angle;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Tan Adjacent'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: angleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the angle?',
                  filled: true,
                  fillColor: Colors.black,
                  hintStyle: TextStyle(color: Colors.white),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 10),

            Flexible(
              child: TextField(
                controller: adjacentController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the opposite?',
                  filled: true,
                  fillColor: Colors.black,
                  hintStyle: TextStyle(color: Colors.white),
                ),
                keyboardType: TextInputType.number,
              ),
            ),


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

                              "x = " + adjacentController.text + " * " + "tan" + angleController.text +
                                  "\n" +
                                  "x = " + adjacentController.text + " * " + tan(double.parse(angleController.text) * pi / 180).toStringAsFixed(3) +
                                  "\n" +
                                  "x = " + answer.toStringAsFixed(3) +
                                  "\n" +
                                  "x = " + answer.toStringAsFixed(1),
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