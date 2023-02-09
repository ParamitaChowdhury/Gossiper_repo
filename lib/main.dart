import 'package:flutter/material.dart';
import 'package:gossiper/provider/theme_provider.dart';
import 'app/modules/home/views/appbar_app.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final provider = Provider.of<ThemeProvider>(context);
          return GetMaterialApp(
            title: 'Gossiper',
            debugShowCheckedModeBanner: false,
            home: AppBarApp(),
            theme: ThemeData(
              // Define the default brightness and colors.
              // brightness: Brightness.dark,
              primaryColor: Colors.lime,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        });
  }
}
