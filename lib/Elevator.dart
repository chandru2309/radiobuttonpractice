import 'package:flutter/material.dart';

class ElevatorButtonPractice extends StatefulWidget {
  const ElevatorButtonPractice({super.key});

  @override
  State<ElevatorButtonPractice> createState() => _ElevatorButtonPracticeState();
}

class _ElevatorButtonPracticeState extends State<ElevatorButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevator Button'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Delete')
                ],
              ),
            ),
            TextButton(onPressed: () {}, child: Text('Delete')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete),
                label: Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                )),
            OutlinedButton(onPressed: () {}, child: Text('Delete')),
            ElevatedButton(onPressed: () {}, child: Text('Delete')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete),
                label: Text('Delete'))
          ],
        ),
      ),
    );
  }
}
