import 'package:get/get.dart';

import '../controllers/screen_one_controller.dart';

class ScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenOneController>(
      () => ScreenOneController(),
    );
  }
}
