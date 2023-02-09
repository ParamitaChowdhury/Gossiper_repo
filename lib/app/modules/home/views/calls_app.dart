import 'package:flutter/material.dart';

class CallsApp extends StatefulWidget {
  const CallsApp({super.key});

  @override
  State<CallsApp> createState() => _CallsAppState();
}

class _CallsAppState extends State<CallsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
      'No Calls to display',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textDirection: TextDirection.ltr,
    )));
  }
}
