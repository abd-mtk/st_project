import 'package:get/get.dart';

class Localization implements Translations {
  Map<String, Map<String, String>> translations;
  Localization(this.translations);

  @override
  Map<String, Map<String, String>> get keys {
    return translations;
  }
}
