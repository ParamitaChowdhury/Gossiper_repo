import 'package:get/get.dart';

import 'package:gossiper/app/modules/home/bindings/home_binding.dart';
import 'package:gossiper/app/modules/home/views/account_app.dart';
import 'package:gossiper/app/modules/home/views/app_language.dart';
import 'package:gossiper/app/modules/home/views/invite_app.dart';
import 'package:gossiper/app/modules/home/views/settings.dart';

import '../modules/home/views/appbar_app.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => AppBarApp(),
      //binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountApp(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsApp(),
    ),
    GetPage(
      name: _Paths.LANGUAGE,
      page: () => AppLanguage(),
    ),
    GetPage(
      name: _Paths.INVITE,
      page: () => InviteApp(),
    ),
  ];
}
