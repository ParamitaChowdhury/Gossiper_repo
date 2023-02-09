import 'package:flutter/material.dart';
import 'package:gossiper/theme.dart';
import 'package:provider/provider.dart';

class ConsumerForThemeChange extends StatefulWidget {
  @override
  State<ConsumerForThemeChange> createState() => _ConsumerForThemeChangeState();
}

class _ConsumerForThemeChangeState extends State<ConsumerForThemeChange> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, notifier, child) => SwitchListTile(
              title: Text("Dark Mode", style: TextStyle()),
              onChanged: (val) {
                notifier.toggleTheme();
              },
              value: notifier.darkTheme,
            ));
  }
}
