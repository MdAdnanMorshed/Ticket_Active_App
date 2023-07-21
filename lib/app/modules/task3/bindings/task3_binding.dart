import 'package:get/get.dart';

import '../controllers/task3_controller.dart';

class Task3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Task3Controller>(
      () => Task3Controller(),
    );
  }
}
