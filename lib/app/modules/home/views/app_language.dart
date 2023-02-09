import 'package:flutter/material.dart';

import '../../../../global_colors.dart';

class AppLanguage extends StatefulWidget {
  const AppLanguage({Key? key}) : super(key: key);

  @override
  State<AppLanguage> createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalVariables.drawerHeaderColor,
        title:
            Text('Select App Language', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
