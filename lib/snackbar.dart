import 'package:flutter/material.dart';

class SnackBarNotification extends StatefulWidget {
  const SnackBarNotification({super.key});

  @override
  State<SnackBarNotification> createState() => _SnackBarNotificationState();
}

class _SnackBarNotificationState extends State<SnackBarNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Snack Bar',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: InkWell(
             onTap: () {
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
   shape: Border(top: BorderSide()),
    behavior: SnackBarBehavior.floating,
   backgroundColor: Colors.teal,
    content: Container( decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(77)),
      child: Text('Success!!!'),
    ),
),
);
             },
             child: Text('Click here'),
           ),
         )
        ],
      )

    );
  }
}
