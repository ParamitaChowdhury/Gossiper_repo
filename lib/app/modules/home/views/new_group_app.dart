import 'package:flutter/material.dart';

import 'contacts_app.dart';

class NewGroupApp extends StatefulWidget {
  const NewGroupApp({Key? key}) : super(key: key);

  @override
  State<NewGroupApp> createState() => _NewGroupAppState();
}

class _NewGroupAppState extends State<NewGroupApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'create new group',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
