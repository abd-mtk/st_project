import 'package:get/get.dart';
import 'app_services.dart';

Future initServices() async {
  await Get.putAsync(() => AppServices().init());
}
