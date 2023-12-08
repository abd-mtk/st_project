import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/services/app_services.dart';
import '../localization/localization.dart';
import '../themes/dark_theme.dart';
import '../themes/light_theme.dart';

class ConfigController extends GetxController {
  AppServices appServices = Get.find<AppServices>();

  final ThemeData light = lightTheme;
  final ThemeData dark = darkTheme;
  late Localization localization;

  Localization loadLanguage() {
    return Localization(appServices.translations);
  }

  void checkThemeMode() {
    if (appServices.sharedPreferences.getString('theme') == 'light') {
      Get.changeTheme(light);
    }
    if (appServices.sharedPreferences.getString('theme') == 'dark') {
      Get.changeTheme(dark);
    }
  }

  void checkLanguageMode() {
    if (appServices.sharedPreferences.getString('lang') == 'ar') {
      Get.updateLocale(const Locale('ar'));
    } else if (appServices.sharedPreferences.getString('lang') == 'en') {
      Get.updateLocale(const Locale('en'));
    }
  }

  void changeTheme(String theme) {
    if (theme == 'light') {
      Get.changeTheme(light);
      appServices.sharedPreferences.setString('theme', 'light');
    } else {
      Get.changeTheme(dark);
      appServices.sharedPreferences.setString('theme', 'dark');
    }
  }

  void changeLanguage(String lang) {
    Get.updateLocale(Locale(lang));
    appServices.sharedPreferences.setString('lang', lang);
  }

  @override
  void onInit() {
    localization = loadLanguage();
    checkThemeMode();
    checkLanguageMode();
    super.onInit();
  }
}
