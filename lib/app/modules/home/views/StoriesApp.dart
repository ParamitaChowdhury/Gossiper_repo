import 'package:flutter/material.dart';

class StoriesApp extends StatefulWidget {
  const StoriesApp({super.key});

  @override
  State<StoriesApp> createState() => _StoriesAppState();
}

class _StoriesAppState extends State<StoriesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
      'No Stories to display',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textDirection: TextDirection.ltr,
    )));
  }
}
