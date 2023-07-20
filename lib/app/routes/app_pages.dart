
import 'package:get/get.dart';
import 'package:ticket_active/app/modules/screen_one/bindings/screen_one_binding.dart';
import 'package:ticket_active/app/modules/screen_one/views/screen_one_view.dart';
import '../modules/screen_two/bindings/screen_two_binding.dart';
import '../modules/screen_two/views/screen_two_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.screenOne;

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

  ];
}