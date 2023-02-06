import 'package:flutter/material.dart';
import 'appbarApp.dart';

void main() {
  bool isSwitched = false;
  runApp(
    MaterialApp(
      title: 'Gossiper',
      debugShowCheckedModeBanner: false,
      home: AppBarApp(),
    ),
  );
}
