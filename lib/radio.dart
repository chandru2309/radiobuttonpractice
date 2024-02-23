import 'package:flutter/material.dart';

class RadioActionButton extends StatefulWidget {
  const RadioActionButton({super.key});

  @override
  State<RadioActionButton> createState() => _RadioActionButtonState();
}

class _RadioActionButtonState extends State<RadioActionButton> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text('Do you like MSD'),
                Radio(
                    value: 'yes',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    }),
                Text('yes'),
                Radio(
                    value: 'No',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue=value;
                      });
                    }),
                Text('No')
              ],
            )
          ],
        ),
      ),
    );
  }
}
