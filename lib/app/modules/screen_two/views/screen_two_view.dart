import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screen_two_controller.dart';

class ScreenTwoView extends GetView<ScreenTwoController> {
  const ScreenTwoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenTwoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScreenTwoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
