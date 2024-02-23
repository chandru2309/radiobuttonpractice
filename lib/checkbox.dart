import 'package:flutter/material.dart';

class CheckBoxPractice extends StatefulWidget {
  const CheckBoxPractice({super.key});

  @override
  State<CheckBoxPractice> createState() => _CheckBoxPracticeState();
}


class _CheckBoxPracticeState extends State<CheckBoxPractice> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked=value!;
                  });
                }),
                Text('This the Terms And Condition Services')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
