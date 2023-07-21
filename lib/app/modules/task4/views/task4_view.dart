import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task4_controller.dart';

class Task4View extends GetView<Task4Controller> {
  const Task4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task4View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Task4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
