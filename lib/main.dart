import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/config/controller/config_controller.dart';
import 'app/routers/app_router.dart';
import 'app/utils/services/notifications_services.dart';
import 'app/utils/services/services.dart';
import 'features/welcome_screen.dart';

void main() async {
  await initApp();
  runApp(MyApp());
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  await initServices();
}

class MyApp extends StatelessWidget {
  final ConfigController configController = Get.put(ConfigController());
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConfigController>(builder: (_) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: true,
        initialRoute: WelcomeScreen.routeName,
        getPages: appRouter,
        locale: Get.locale,
        translations: configController.localization,
      );
    });
  }
}
