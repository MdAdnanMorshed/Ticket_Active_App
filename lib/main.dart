
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'app/routes/app_pages.dart';


void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
    ),
  );
}


