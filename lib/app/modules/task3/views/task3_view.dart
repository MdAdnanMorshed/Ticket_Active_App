import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/ticket_ms_model.dart';
import '../../../data/utils/shimmer_effect.dart';
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
      body: Obx(() {
        if (!controller.isLoadingData.value) {
          return Center(
            child: ShimmerLoading.vListViewLoading(),
          );
        } else {
          if (controller.dataMSList.isEmpty) {
            return const Center(child: Text('No Data Found!'));
          } else {
            return ListView.builder(
              itemCount: controller.dataMSList.length,
              itemBuilder: (BuildContext context, int index) {
                TicketMSModel data = controller.dataMSList[index];
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
