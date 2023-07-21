import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task3_controller.dart';

class Task3View extends GetView<Task3Controller> {
  const Task3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Task3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
