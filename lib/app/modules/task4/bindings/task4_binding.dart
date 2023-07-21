import 'package:get/get.dart';

import '../controllers/task4_controller.dart';

class Task4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Task4Controller>(
      () => Task4Controller(),
    );
  }
}
