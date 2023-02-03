import 'package:flutter/material.dart';

class ChatsApp extends StatefulWidget {
  const ChatsApp({super.key});

  @override
  State<ChatsApp> createState() => _ChatsAppState();
}

class _ChatsAppState extends State<ChatsApp> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No chats to display',
        style: TextStyle(color: Colors.black, fontSize: 50),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
