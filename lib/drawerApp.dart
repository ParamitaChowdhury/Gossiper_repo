import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:gossiper/Account.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 450.0,
      child: ListView(children: const [
        SizedBox(
          height: 208.0,
          child: UserAccountsDrawerHeader(
            accountName: Text('abc',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            accountEmail: Text('abc@gmail.com'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white70, child: Text('AB')),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
            ),
          ),
        ),
        ListTile(
          title: Text('Account'),
          leading: Icon(Icons.account_box),
        ),
        ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
        ListTile(title: Text('App Language'), leading: Icon(Icons.language)),
        ListTile(title: Text('Invite a friend'), leading: Icon(Icons.add)),
      ]),
    );
  }
}
