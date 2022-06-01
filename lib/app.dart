import 'package:flutter/material.dart';
import './textcontrol.dart';

class StateApp extends StatefulWidget {
  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  int index = 0;
  void PressButton() {
    setState(() {
      if (index < 3) {
        index += 1;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Appbar Info'),
            ),
            body: Column(
              children: [
                Text(
                  TextAssign(index),
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text('Press to change text'),
                    onPressed: PressButton,
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  ),
                  alignment: Alignment.center,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )));
  }
}
