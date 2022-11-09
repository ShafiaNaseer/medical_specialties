import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart';
import '../widgets.dart';

class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("REVIEWS"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              Container(
                height: 50.h,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(text: "Your Review Performance is ", style: TextStyle(color: Colors.black), children: [
                  TextSpan(text: "Good", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17.sp))
                ]),
                ),
              ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  CustomContainer(text: 'LATEST',),
                  SizedBox(width: 10.w,),
                  CustomContainerTwo(text: 'ALL RATING'),
                    SizedBox(width: 10.w,),
                  CustomContainerTwo(text: '5 STAR'),
                ],),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    reviews(thumb: Icons.thumb_up_alt_outlined, reviewType: "Positive Reviews",
                        review: "348", percent: "14% ", arrow: Icons.arrow_upward),

                    Container(
                      height: 120.h,
                      child: VerticalDivider( color: Colors.black.withOpacity(0.4), thickness: 2),
                    ),
                    reviews(thumb: Icons.thumb_down_alt_outlined, reviewType: "Negative Reviews",
                        review: "67", percent: "3% ", arrow: Icons.arrow_downward)
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                  return Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 17,),
                            Text('4.8')
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red.shade900,
                              radius: 25.r,
                              child: CircleAvatar(
                                radius: 23.r,
                                backgroundColor: Color(0xffF5EEE6),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BoldText("Alicia J. Aldridge"),
                                Text("03 Days Ago")
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("durumkjgr ftiru jteiwodj eriueofrfjcsk fekjruie griifos")
                      ],
                    ),
                  );
                },),
              )
              

            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
