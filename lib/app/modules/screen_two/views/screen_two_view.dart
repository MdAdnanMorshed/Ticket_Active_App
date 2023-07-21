
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/coupon_simple_HZ.dart';
import '../../../data/coupon_simple_HZ2.dart';
import '../../../data/coupon_simple_VT.dart';
import '../controllers/screen_two_controller.dart';

class ScreenTwoView extends GetView<ScreenTwoController> {
  const ScreenTwoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Container(

          height: Get.size.width/2,
          width: Get.size.width,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),

          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,

            children: [
              Expanded(child:Icon(Icons.arrow_back_ios,color: Colors.orange,)),
              Expanded(child: Text('My Tickets',style: TextStyle(color: Colors.orange,fontSize: 20),)),
              Expanded(child: Container()),
            ],
          ),
        ),

      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
              //width: Get.size.width,
              child:
              TicketsUIHZ()

            ),
            SizedBox(height: 10,),
            Text('Scan QR code to avail ticket',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

            Container(

              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const[
                      Text('Order ID ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                      Text('87235',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 16),),
                      Text('Ticket Purchase Date ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                      Text('25/2/2023',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 16),),
                      Text('Ticket Expire Date',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                      Text('Note',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 16),),
                      Text('Ticket Price ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                      Text('0',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 16),),
                    ],
                  ),
                  Image.asset('assets/qrcodebar.PNG',height: 200,width: 150,),

                ],
              )
            ),


          ],
        ),
      ),
    );
  }
}

class PainterOne extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 4;

    var paint1 = Paint()
      ..color = Color(0xfff80606)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    RRect fullRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h),
      Radius.circular(r),
    );
    canvas.drawRRect(fullRect, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

