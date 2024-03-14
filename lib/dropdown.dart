import 'package:flutter/material.dart';

class DropDownPractice extends StatefulWidget {
  const DropDownPractice({super.key});

  @override
  State<DropDownPractice> createState() => _DropDownPracticeState();
}

class _DropDownPracticeState extends State<DropDownPractice> {
  var _selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('DropDown')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              elevation: 22,
              value: _selectedArea,
              hint: Text('Select City'),
              items: <String>['Chennai', 'Kolkata', 'Mumbai', 'Delhi'].map(
                    (String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                },
              ).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedArea = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
