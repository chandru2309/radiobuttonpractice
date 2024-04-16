import 'package:flutter/material.dart';

void main() {
  runApp(Alert());
}

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var studentController=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AlertDialog Example'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
                showDialog(context: context,
                    builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('This is Simple'),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: Text('close'))
                    ],
                  );
                    }
                );
              }, child: Text('Alert Dialog')),
            ],
          ),
        ),
      ),
    );
  }
}