import 'package:flutter/material.dart';
import 'appbarApp.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Gossiper',
      theme: ThemeData(
          primaryColor: Colors.cyanAccent,
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: AppBarApp(),
    ),
  );
}
