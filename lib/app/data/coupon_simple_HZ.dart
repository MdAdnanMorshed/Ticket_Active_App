import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HorizontalCouponExample1 extends StatelessWidget {
  const HorizontalCouponExample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Color primaryColor = Colors.orange.shade100;
     Color secondaryColor = Colors.orange.shade100;

    return CouponCard(

      height: Get.size.width/2,
      backgroundColor: primaryColor,
      curveAxis: Axis.vertical,
      firstChild: Container(


        decoration:  BoxDecoration(
          color: secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/logo.png',width: Get.size.width/6,),
              SizedBox(height: 10,),
              Text('Uttara',style: TextStyle(color: Colors.grey)),
              Container(margin: EdgeInsets.symmetric(vertical: 2),
                  color: Colors.orange,height: 1,width: Get.size.width/8),
              Text('Wari',style: TextStyle(color: Colors.grey),),
              Container(margin: EdgeInsets.symmetric(vertical: 2),
                  color: Colors.orange,height: 1,width: Get.size.width/8),

              Text('Badda',style: TextStyle(color: Colors.grey),),
              Container(margin: EdgeInsets.symmetric(vertical: 2),color: Colors.orange,height: 1,width: Get.size.width/8),

              Text('Mirpur',style: TextStyle(color: Colors.grey),),
              Container(margin: EdgeInsets.symmetric(vertical: 2),color: Colors.orange,height: 1,width: Get.size.width/8),


            ],
          ),
        ),
      ),
      secondChild: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:    [
            Text(
              'Child Ticket',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'SL NO: 188107',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(
              'Quantity:2',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: Get.size.width*.1,
              width: Get.size.width/ 3.5,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),

              ),
              child:Text('Price:0',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}