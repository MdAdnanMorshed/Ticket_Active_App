import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [

              Image.asset('assets/logo.png'),

              SizedBox(height: 10,),

              customButtonHome('Task 01 : ','Screen-01',1),
              customButtonHome('Task 02 : ','Screen-02',2),
              customButtonHome('Task 03 : ','GET API Tickets',3),
              customButtonHome('Task 04 : ','GET API ORDER ID',4),

              SizedBox(height: 10,),
              Text('Developer by Engr.Adnan Morshed'),
              Text('adnanmorshed118@gmail.com'),
              Text('01831679008')
            ],
          ),
        ),
      ),
    );


  }
  Widget customButtonHome(String task, String title,int count){
    return    InkWell(
       onTap: (){
          if(count==1){
            Get.toNamed(Routes.screenOne);
          }else if(count==2){

            Get.toNamed(Routes.screenTwo);

          }else if(count==3){

            Get.toNamed(Routes.TASK3);
          }else{

            Get.toNamed(Routes.TASK4);
          }
       },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        alignment: Alignment.center,
        height: Get.size.width*.1,
        width: Get.size.width/1.1,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(5),

        ),
        child:Row(
          children: [
            Expanded(child: Text(task,style: TextStyle(color: Colors.white,fontSize: 20),)),
            Expanded(
                flex: 3,
                child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),)),
          ],
        ),
      ),
    );
  }
}
