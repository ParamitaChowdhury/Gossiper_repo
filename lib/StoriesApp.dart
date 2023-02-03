import 'package:flutter/material.dart';

class StoriesApp extends StatefulWidget {
  const StoriesApp({super.key});

  @override
  State<StoriesApp> createState() => _StoriesAppState();
}

class _StoriesAppState extends State<StoriesApp> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No stories to display',
          style: TextStyle(color: Colors.black, fontSize: 50),
          textDirection: TextDirection.ltr),
    );
  }
}
