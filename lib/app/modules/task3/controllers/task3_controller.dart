import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/models/ticket_ms_model.dart';
import '../../../data/repositories/service_api.dart';

class Task3Controller extends GetxController {
  //TODO: Implement Task3Controller
  final count = 0.obs;
  List dummyData = [].obs;
  List<TicketMSModel> dataMSList = [];
  final isLoadingData = false.obs;
  @override
  void onInit() {

    super.onInit();
    getTicketMS();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTicketMS() async {
    var resValue = await ServiceAPI().getApiTicketMS();
    dataMSList.clear();
    var bodyMap = json.decode(resValue.body);
    var resCode = resValue.statusCode;

      if (resCode == 200 || resCode == 201 || resCode == 202) {
        for (var data in bodyMap["items"]) {
          dataMSList.add(TicketMSModel.fromJson(data));
        }
        isLoadingData.value = true;
      } else {
        if (kDebugMode) {
          print(' else error ');
        }
      }

  }
}
