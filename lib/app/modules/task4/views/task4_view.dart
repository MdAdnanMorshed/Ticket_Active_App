import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/ticket_dt_model.dart';
import '../../../data/utils/shimmer_effect.dart';
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
      body: Obx(() {
        if (!controller.isLoadingData.value) {
          return Center(
            child: ShimmerLoading.vListViewLoading(),
          );
        }
        else {
          if (controller.dataDTList.isEmpty) {
            return const Center(child: Text('No Data Found!'));
          } else {
            return ListView.builder(
              itemCount: controller.dataDTList.length,
              itemBuilder: (BuildContext context, int index) {
                TicketDTModel data = controller.dataDTList[index];
                return Card(
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      child: Text(data.toJson().toString())),
                );
              },
            );
          }
        }
      }),
    );
  }
}
