import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'network_services.dart';
import 'read_json_lang_files.dart';

class AppServices extends GetxService {
  late SharedPreferences sharedPreferences;
  late NetworkServicesImplement networkInfo;
  late Map<String, Map<String, String>> translations;
  late List<String> supportedLanguages;

  Future<AppServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    translations = await readJsonLangFiles(['ar.json', 'en.json']);
    networkInfo = NetworkServicesImplement(InternetConnectionChecker());
    supportedLanguages = translations.keys.toList();
    return this;
  }
}
