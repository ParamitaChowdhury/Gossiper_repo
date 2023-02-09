import 'package:flutter/material.dart';
import 'app/modules/home/views/appbar_app.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:gossiper/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return GetMaterialApp(
            title: 'Gossiper',
            debugShowCheckedModeBanner: false,
            theme: notifier.darkTheme ? dark : light,
            home: AppBarApp(),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
