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
      body: Card(
        child: Container(
          height: Get.size.width,
          width: Get.size.width,
          color: Colors.green,
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Text('Left'),
                  Column(
                    children: [
                      Text('This is your Entry Ticket'),
                      Text('Order ID: 299987'),
                      Text('Ticket Price : 700 TK'),
                      Text('Active'),
                    ],
                  ),
                 Image.asset('assets/qr.png')
                ],
              )),
              Expanded(
                  child: Row(
                    children: [
                      Text('Left'),
                      Text('Center'),
                      Text('Right'),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
