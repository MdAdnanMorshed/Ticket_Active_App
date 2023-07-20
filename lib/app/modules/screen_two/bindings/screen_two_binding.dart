import 'package:get/get.dart';

import '../controllers/screen_two_controller.dart';

class ScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenTwoController>(
      () => ScreenTwoController(),
    );
  }
}
