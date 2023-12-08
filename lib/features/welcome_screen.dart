import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/config/controller/config_controller.dart';

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
                  },
                  child: Text("1".tr)),
              ElevatedButton(
                  onPressed: () {
                    configController.changeTheme('light');
                    configController.changeLanguage('ar');
                  },
                  child: Text("1".tr)),
            ],
          ),
        ),
      ),
    );
  }
}
