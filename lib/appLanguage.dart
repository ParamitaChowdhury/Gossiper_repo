import 'package:flutter/material.dart';

class AppLanguage extends StatefulWidget {
  const AppLanguage({Key? key}) : super(key: key);

  @override
  State<AppLanguage> createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyanAccent),
    );
  }
}
