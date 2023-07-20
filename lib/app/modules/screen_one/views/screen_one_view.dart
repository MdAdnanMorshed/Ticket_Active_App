import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screen_one_controller.dart';

class ScreenOneView extends GetView<ScreenOneController> {
  const ScreenOneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenOneView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScreenOneView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
