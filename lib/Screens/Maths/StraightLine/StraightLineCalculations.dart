// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
import 'package:flutter/services.dart';


void main() => runApp(const StraightLineWorkingScreen());


// Define a custom Form widget.
class StraightLineWorkingScreen extends StatefulWidget {
  const StraightLineWorkingScreen({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}


// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<StraightLineWorkingScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final time1Controller = TextEditingController();
  final change1Controller = TextEditingController();
  final time2Controller = TextEditingController();
  final change2Controller = TextEditingController();
  final unitController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    time1Controller.dispose();
    change1Controller.dispose();
    time2Controller.dispose();
    change2Controller.dispose();
    unitController.dispose();
    super.dispose();
  }
  var answer = 0.0;
  var time1 = 0.0;
  var time2 = 0.0;
  var change1 = 0.0;
  var change2 = 0.0;
  var working1 = 0.0;
  var working2 = 0.0;

  var _dropDownValue = "Please Select";

  void calculate() {
    //Calculate What needs to be calculated
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Straight Line Calculation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: <Widget>[
            const Text (
              "The Highest Number",
              textAlign: TextAlign.left,
            ),
            TextFormField(
              controller: time1Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What is the first time?',
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            DropdownButton<String>(
              hint: _dropDownValue == null
                  ? const Text('Dropdown')
                  : Text(
                _dropDownValue,
                style: const TextStyle(color: Colors.white),
              ),
              iconSize: 35.0,
              style: const TextStyle(color: Colors.white),
              items: <String>['+', '-'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(
                      () {
                    _dropDownValue = value!;
                  },
                );
              },
            ),

            FloatingActionButton(
              onPressed: () {
                if ("a" == "b") {
                  showDialog(
                    context: context,
                    builder: (context) {
                      calculate();
                      return const AlertDialog(
                          backgroundColor: Colors.white,
                          content: Text(
                            "Hi",
                            style: TextStyle(color: Colors.black),
                          )
                      );
                    },
                  );
                }
                else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                          backgroundColor: Colors.white,
                          content: Text(
                            "You need to fill out one of the input fields",
                            style: TextStyle(color: Colors.black),
                          )
                      );
                    },
                  );
                }
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