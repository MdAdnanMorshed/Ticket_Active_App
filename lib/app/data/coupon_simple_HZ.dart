import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TicketsUIHZ extends StatelessWidget {
  const TicketsUIHZ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Color primaryColor = Colors.yellow.shade200;
     Color secondaryColor = Colors.yellow.shade200;

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
      secondChild:

    CustomPaint(
    painter: PainterOne1(),
    child:
      Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(30),

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
    ),
    );
  }
}



class PainterOne1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 4;
    var _paint = Paint();
    _paint.color = Colors.white; //dots color
    _paint.strokeWidth = 4; //dots thickness
    _paint.strokeCap = StrokeCap.round;

    for (double i = -300; i < 300; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0)
        canvas.drawLine(Offset(0.0, i), Offset( 0.0,i + 5), _paint);
    }

  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
