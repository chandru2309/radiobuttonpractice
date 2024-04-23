import 'package:flutter/material.dart';

void main() {
  runApp(SwitchButtonPractice());
}

class SwitchButtonPractice extends StatefulWidget {
  @override
  _SwitchButtonPracticeState createState() => _SwitchButtonPracticeState();
}

class _SwitchButtonPracticeState extends State<SwitchButtonPractice> {
  bool _switchValue = false;
  String _displayText = 'Off';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Switch is $_displayText'),
              Switch(
                value: _switchValue,
                onChanged: (bool newValue) {
                  setState(() {
                    _switchValue = newValue;
                    _displayText = newValue ? 'On' : 'Off';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}