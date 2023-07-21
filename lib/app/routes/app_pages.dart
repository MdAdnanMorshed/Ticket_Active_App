import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/screen_one/bindings/screen_one_binding.dart';
import '../modules/screen_one/views/screen_one_view.dart';
import '../modules/screen_two/bindings/screen_two_binding.dart';
import '../modules/screen_two/views/screen_two_view.dart';
import '../modules/task3/bindings/task3_binding.dart';
import '../modules/task3/views/task3_view.dart';
import '../modules/task4/bindings/task4_binding.dart';
import '../modules/task4/views/task4_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.SCREENONE,
      page: () => const ScreenOneView(),
      binding: ScreenOneBinding(),
    ),
    GetPage(
      name: _Paths.SCREENTWO,
      page: () => const ScreenTwoView(),
      binding: ScreenTwoBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TASK3,
      page: () => const Task3View(),
      binding: Task3Binding(),
    ),
    GetPage(
      name: _Paths.TASK4,
      page: () => const Task4View(),
      binding: Task4Binding(),
    ),
  ];
}
