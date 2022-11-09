
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_specialties/utils.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key, required this.text}) : super(key: key);
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(color: Colors.white),),
          Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white,)
        ],
      ),
    );
  }
}


class CustomContainerTwo extends StatelessWidget {
  CustomContainerTwo({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 40.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.blue)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, ),
          Icon(Icons.keyboard_arrow_down_sharp, )
        ],
      ),
    );
  }
}

class reviews extends StatelessWidget {
   reviews({Key? key, required this.thumb, required this.reviewType, required this.review,
     required this.percent, required this.arrow}) : super(key: key);
final IconData thumb, arrow;
final String reviewType, review, percent;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(thumb),
            SizedBox(width: 8.w,),
            Text(reviewType, style: TextStyle(color: Colors.black,
                fontSize: 15.sp)),
          ],
        ),
        Text(review, style: TextStyle(color: Colors.black,
            fontSize: 45.sp)),
        Row(
          children: [
            Icon(arrow, size: 17,color: Colors.green.shade900,),
            RichText(
              text: TextSpan(text: percent, style: TextStyle(color: Colors.green.shade900), children: [
                TextSpan(text: "From Last 7 Days", style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w500, fontSize: 12.sp))
              ]),
            ),
          ],
        ),
      ],
    );
  }
}

class cartItem extends StatelessWidget {
  const cartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText("Wooden Coffee Table"),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 15,),
                  grayText("   (426 reviews)"),
                ],
              ),
              SizedBox(height: 5.h,),
              redText("\$274.00"),
            ],
          ),
          Column(
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){}, icon: Icon(Icons.add_circle_outline, size: 20,)),
              Text('2', style: TextStyle(fontSize: 18.sp),),
              Center(
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){}, icon: Icon(Icons.remove_circle_outline, size: 20,)),
              ),
            ],
          ),
          Container(
            height: 90.h,
            width: 90.h,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.red.shade900, width: 2)
            ),
          ),
        ],
      ),
    );
  }
}


