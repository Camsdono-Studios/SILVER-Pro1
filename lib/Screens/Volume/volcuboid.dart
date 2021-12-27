import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
import 'package:flutter/services.dart';


void main() => runApp(const VolCubiodWorkingScreen());


// Define a custom Form widget.
class VolCubiodWorkingScreen extends StatefulWidget {
  const VolCubiodWorkingScreen({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<VolCubiodWorkingScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final length1Controller = TextEditingController();
  final breadth1Controller = TextEditingController();
  final length2Controller = TextEditingController();
  final breadth2Controller = TextEditingController();
  final length3Controller = TextEditingController();
  final breadth3Controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    length1Controller.dispose();
    breadth1Controller.dispose();
    length2Controller.dispose();
    breadth2Controller.dispose();
    length3Controller.dispose();
    breadth3Controller.dispose();
    super.dispose();
  }
  var answer = 0.0;
  var answer2 = 0.0;
  var length1 = 0.0;
  var length2 = 0.0;
  var length3 = 0.0;
  var breadth1 = 0.0;
  var breadth2 = 0.0;
  var breadth3 = 0.0;
  var a1 = 0.0;
  var a2 = 0.0;
  var a3 = 0.0;


  void calculate() {
    //Calculate What needs to be calculated
    length1 = double.parse(length1Controller.text);
    length2 = double.parse(length2Controller.text);
    length3 = double.parse(length3Controller.text);
    breadth1 = double.parse(breadth1Controller.text);
    breadth2 = double.parse(breadth2Controller.text);
    breadth3 = double.parse(breadth3Controller.text);

    a1 = length1 * breadth1;
    a2 = length2 * breadth2;
    a3 = length3 * breadth3;
    answer = a1 + a2 + a3;
    answer2 = answer * 2;
    answer.toString();
    answer2.toString();
  }



  @override
  Widget build(BuildContext context) {
    //adjacent = double.parse(adjacentController.text);
    //angle = tan(double.parse(angleController.text) * pi / 180);
    //answer = adjacent * angle;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuboid Surface Area'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: <Widget>[
            const Text (
              "Length 1",
              textAlign: TextAlign.left,
            ),
            TextFormField(
              controller: length1Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the length of the first side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: breadth1Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the breadth of the first side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            const Text (
              "Length 2",
              textAlign: TextAlign.left,
            ),
            TextFormField(
              controller: length2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the length of the second side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: breadth2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the breadth of the second side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            const Text (
              "Length 3",
              textAlign: TextAlign.left,
            ),
            TextFormField(
              controller: length3Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the length of the third side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: breadth3Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the breadth of the third side?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
             FloatingActionButton(
               onPressed: () {
                 showDialog(
                   context: context,
                   builder: (context) {
                     calculate();
                     return AlertDialog(
                         backgroundColor: Colors.white,
                         content: Text(
                           answer.toString(),
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

          ],
        ),
      ),
    );
  }
}