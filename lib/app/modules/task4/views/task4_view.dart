import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/ticket_dt_model.dart';
import '../../../data/utils/app_space.dart';
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
                return _dtDataWidget(data);
              },
            );
          }
        }
      }),
    );
  }
  _dtDataWidget(TicketDTModel data) {
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
                    'Type : ',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    data.dsc.toString(),
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              ),

              Row(
                children: [
                  const Text(
                    'app_avail : ',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    data.appAvail.toString(),
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              AppSpace.spaceH4,
              Row(
                children: [
                  const Text(
                    'Quantity  : ',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  Text(
                   data.qty.toString(),
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
                    ' ৳ '+ data.discount.toString(),
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
                    'MRP : ',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    ' ৳ '+data.mrp.toString(),
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
