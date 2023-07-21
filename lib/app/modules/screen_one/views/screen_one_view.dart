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
        title:  Container(

          height: Get.size.width/2,

          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(5),

          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child:Icon(Icons.arrow_back)),
              Expanded(child: Text('Tickets',style: TextStyle(color: Colors.white,fontSize: 20),)),
              Expanded(child: Container()),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: 3,
        itemBuilder: (context, int index) {
          return
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),

                ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomPaint(
                  painter: PainterOne(),
                  child:
                  Container(
                    padding: const EdgeInsets.only(left: 10,top: 12,right: 10,bottom: 10),
                    margin: const EdgeInsets.all(2.0),
                    height: Get.size.width / 2,
                    width: Get.size.width,
                    color: Colors.white10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: Image.asset('assets/babuland.png')),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('This is your Entry Ticket',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('Order ID: 299987'),
                                    Text('Ticket Price : 700 TK'),



                                    Container(
                                      alignment: Alignment.center,
                                      height: Get.size.width*.1,
                                      width: Get.size.width/ 3,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5),

                                      ),
                                      child:Text('Active',style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Image.asset(
                                  'assets/qr.png',
                                )),
                          ],
                        ),

                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Purchase Date 25/2/2023'),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                Text('Details ',style: TextStyle(color: Colors.orange),),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 8,
                                  child: Icon(Icons.arrow_forward,size: 12,color: Colors.white,),)

                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
        },
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




