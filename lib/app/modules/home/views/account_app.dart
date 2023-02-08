import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../common/navigation_drawer_app.dart';
import '../controllers/home_controller.dart';

import 'package:flutter/material.dart';

class AccountApp extends StatefulWidget {
  const AccountApp({Key? key}) : super(key: key);

  @override
  State<AccountApp> createState() => _AccountAppState();
}

class _AccountAppState extends State<AccountApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('user profile', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
