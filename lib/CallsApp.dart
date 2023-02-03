import 'package:flutter/material.dart';

class CallsApp extends StatefulWidget {
  const CallsApp({super.key});

  @override
  State<CallsApp> createState() => _CallsAppState();
}

class _CallsAppState extends State<CallsApp> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No calls to display',
          style: TextStyle(color: Colors.black, fontSize: 50),
          textDirection: TextDirection.ltr),
    );
  }
}
