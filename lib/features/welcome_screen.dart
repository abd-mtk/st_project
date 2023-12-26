import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:st_project/features/map.dart';

import '../app/config/controller/config_controller.dart';
import '../app/utils/services/notifications_services.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  static const String routeName = '/welcome';
  final ConfigController configController = Get.find<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConfigController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('2'.tr),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    configController.changeTheme('dark');
                    configController.changeLanguage('en');
                    NotificationService().showNotification(
                        title: "title", body: "body", payLoad: "payLoad");
                  },
                  child: Text("1".tr)),
              ElevatedButton(
                  onPressed: () {
                    configController.changeTheme('light');
                    configController.changeLanguage('ar');
                    NotificationService().showNotification(
                        title: "title", body: "body", payLoad: "payLoad");
                  },
                  child: Text("1".tr)),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(MapSample.routeName);
                  },
                  child: Text("3".tr)),
            ],
          ),
        ),
      ),
    );
  }
}
