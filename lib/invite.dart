import 'package:flutter/material.dart';

class InviteApp extends StatefulWidget {
  const InviteApp({Key? key}) : super(key: key);

  @override
  State<InviteApp> createState() => _InviteAppState();
}

class _InviteAppState extends State<InviteApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyanAccent),
    );
  }
}