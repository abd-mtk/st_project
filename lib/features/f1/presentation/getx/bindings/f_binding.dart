import 'package:get/get.dart';

import '../controllers/f_controller.dart';

class FBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FController>(() {
      return FController();
    });
  }
}
