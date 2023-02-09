import 'package:flutter/material.dart';

import '../../../../consumer_for_theme_change.dart';

class ChatsApp extends StatefulWidget {
  const ChatsApp({super.key});

  @override
  State<ChatsApp> createState() => _ChatsAppState();
}

class _ChatsAppState extends State<ChatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'No Chats to display',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        textDirection: TextDirection.ltr,
      )),
    );
    //
    //   //const Center(
    //   child: Text(
    //     'No chats to display',
    //     style: TextStyle(color: Colors.black, fontSize: 30),
    //     textDirection: TextDirection.ltr,
    //   ),
    // );
    //task to execute when this
    //
    //
    //
    //
    // button is pressed
  }
}
