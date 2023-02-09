import 'package:flutter/material.dart';

import '../../../../app_theme.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp({Key? key}) : super(key: key);

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalVariables.drawerHeaderColor,
        title: Text('Settings', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
