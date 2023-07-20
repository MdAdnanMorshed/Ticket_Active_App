import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, int index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.all(10.0),
              height: Get.size.width / 2.2,
              width: Get.size.width,
              color: Colors.grey,
              child: Column(
                children: [
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: Image.asset('assets/qr.png')),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('This is your Entry Ticket'),
                            Text('Order ID: 299987'),
                            Text('Ticket Price : 700 TK'),
                            ElevatedButton(
                                onPressed: () {
                                  Get.to(Routes.screenTwo);
                                },
                                child: Text('Active')),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text('Purchase Date 25/2/2023'),
                                Text('Details ->'),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Image.asset(
                        'assets/qr.png',
                      )),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.red,
                    thickness: 2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
