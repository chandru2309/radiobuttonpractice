import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPractice extends StatefulWidget {
  const SpeedDialPractice({super.key});

  @override
  State<SpeedDialPractice> createState() => _SpeedDialPracticeState();
}

class _SpeedDialPracticeState extends State<SpeedDialPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Button'),
      ),
      floatingActionButton: SpeedDial(
        children: [
          SpeedDialChild(
            child: Icon(Icons.share),
             label: 'share',
          ),
          SpeedDialChild(
          )
        ],
      ),

    );
  }
}
