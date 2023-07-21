import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/models/ticket_dt_model.dart';
import '../../../data/repositories/service_api.dart';


class Task4Controller extends GetxController {
  //TODO: Implement Task3Controller
  final count = 0.obs;
  List dummyData = [].obs;
  List<TicketDTModel> dataDTList = [];
  final isLoadingData = false.obs;
  @override
  void onInit() {

    super.onInit();
    getTicketDT();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTicketDT() async {
    var resValue = await ServiceAPI().getApiTicketDT();
    dataDTList.clear();
    var bodyMap = json.decode(resValue.body);
    var resCode = resValue.statusCode;


      if (resCode == 200 || resCode == 201 || resCode == 202) {
        for (var data in bodyMap["items"]) {
          dataDTList.add(TicketDTModel.fromJson(data));
        }
        isLoadingData.value = true;
      } else {
        if (kDebugMode) {
          print(' else error ');
        }
      }

  }
}