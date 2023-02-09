import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gossiper/app/routes/app_pages.dart';
import 'package:gossiper/global_colors.dart';
import 'package:provider/provider.dart';

import '../../../../consumer_for_theme_change.dart';
import '../../../../theme.dart';

class NavigationDrawerApp extends StatefulWidget {
  const NavigationDrawerApp({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerApp> createState() => _NavigationDrawerAppState();
}

class _NavigationDrawerAppState extends State<NavigationDrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        SizedBox(height: 207.0, child: buildDrawerHeader()),
        ConsumerForThemeChange(),
        // Divider(
        //   color: Colors.grey,
        // ),
        buildDrawerItem(
            icon: Icons.account_box,
            text: 'Account',
            onTap: () => navigate(0),
            tileColor: Get.currentRoute == Routes.ACCOUNT ? Colors.lime : null,
            textIconColor: Get.currentRoute == Routes.ACCOUNT
                ? Colors.white
                : Colors.black),
        buildDrawerItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () => navigate(1),
            tileColor: Get.currentRoute == Routes.SETTINGS ? Colors.lime : null,
            textIconColor: Get.currentRoute == Routes.SETTINGS
                ? Colors.white
                : Colors.black),
        buildDrawerItem(
            icon: Icons.language,
            text: 'App Language',
            onTap: () => navigate(2),
            tileColor: Get.currentRoute == Routes.LANGUAGE ? Colors.lime : null,
            textIconColor: Get.currentRoute == Routes.LANGUAGE
                ? Colors.white
                : Colors.black),
        buildDrawerItem(
            icon: Icons.add,
            text: 'Invite a friend',
            onTap: () => navigate(3),
            tileColor: Get.currentRoute == Routes.INVITE ? Colors.lime : null,
            textIconColor: Get.currentRoute == Routes.INVITE
                ? Colors.white
                : Colors.black),
      ]),
    );
  }

  Widget buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text("ABC"),
      accountEmail: Text("CoderABC@gmail.com"),
      currentAccountPicture: CircleAvatar(
        foregroundColor: GlobalVariables.drawerHeaderColor,
        backgroundColor: Colors.white,
        child: Text('ABC'),
        //backgroundImage: AssetImage('icons/AppBarLogo.png'),
      ),
      currentAccountPictureSize: Size.square(72),
      decoration: BoxDecoration(
        color: GlobalVariables.drawerHeaderColor,
      ),
    );
  }

  Widget buildDrawerItem(
      {required String text,
      required IconData icon,
      required Color textIconColor,
      required Color? tileColor,
      required Function() onTap}) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.ACCOUNT);
    } else if (index == 1) {
      Get.toNamed(Routes.SETTINGS);
    } else if (index == 2) {
      Get.toNamed(Routes.LANGUAGE);
    } else if (index == 3) {
      Get.toNamed(Routes.INVITE);
    }
  }
}
