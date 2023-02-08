import 'package:flutter/material.dart';

class ContactApp extends StatefulWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'I am contact app',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
