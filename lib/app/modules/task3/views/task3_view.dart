import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/ticket_ms_model.dart';
import '../../../data/utils/app_space.dart';
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
                return _msDataWidget(data);
              },
            );
          }
        }
      }),
    );
  }
  _msDataWidget(TicketMSModel data) {
    return Card(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          margin: const EdgeInsets.only(left: 10, right: 10, top: 2),

          width: Get.size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(0.9),
          ),
          child: Container(

            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    const Text(
                      'mobile_number : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      data.mobileNumber.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Sell Person : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      data.sellPerson.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                AppSpace.spaceH4,
                Row(
                  children: [
                    const Text(
                      'Sell Data : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      data.sellDate.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                AppSpace.spaceH4,
                Row(
                  children: [
                    const Text(
                      'Sub-Total : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' ৳ '+data.subTotal.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                AppSpace.spaceH4,
                Row(
                  children: [
                    const Text(
                      'Discount  : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' ৳ '+ data.discountAmount.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),

                AppSpace.spaceH4,
                Row(
                  children: [
                    const Text(
                      'Vat  : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' ৳ '+ data.vat.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),

                AppSpace.spaceH4,
                const Divider(thickness: 1, height: 1,color: Colors.grey,),

                Row(
                  children: [
                    const Text(
                      'Total : ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' ৳ '+data.total.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

}
