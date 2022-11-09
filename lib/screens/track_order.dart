import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import '../utils.dart';
import '../widgets.dart';

class track_order extends StatefulWidget {
  const track_order({Key? key}) : super(key: key);

  @override
  State<track_order> createState() => _track_orderState();
}

class _track_orderState extends State<track_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Order"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                return ExpansionTile(title: BoldText("#7047983"),

                  trailing: Text('Details'),
                  collapsedTextColor: Colors.black,
                  textColor: Colors.black,

                  childrenPadding: EdgeInsets.symmetric(horizontal: 20),

                  children: [
                    Container(
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
                              Text('2', style: TextStyle(fontSize: 18.sp),),
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
                    ),
                    ExpansionTile(title: BoldText('Info Details'),
                      trailing: Text('Show'),
                      textColor: Colors.black,

                      childrenPadding: EdgeInsets.symmetric(horizontal: 25),
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            grayText2('Number: '),
                            Text("701798544"),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            grayText2('Date: '),
                            Text("22 Oct 2021 at 10:39"),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            grayText2('Status: '),
                            Text("Complete"),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            grayText2('Delivery: '),
                            Text("25 Oct 2021"),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            grayText2('Amount: '),
                            redText("\$274.00"),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ],

                );
              },),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 90.h,
              width: 280.w,
              color: Color(0xffEFEAE4),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BoldText('Have a problem?'),
                      Text('tufg weituu etiuei'),
                    ],
                  ),
                  Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                    ),
                    child: Center(child: Text('Get Help')),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
