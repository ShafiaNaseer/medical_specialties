import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:medical_specialties/screens/track_order.dart';
import '../utils.dart';
import '../widgets.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText("Doctor Fees:"),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 20.h),
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      height: 90.h,
                      width: 90.h,
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(color: Colors.red.shade900, width: 2)),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        redText("CARDIOLOGY"),
                        SizedBox(
                          height: 5,
                        ),
                        BoldText("Dr. Jaime M. Mercado"),
                        grayText("5+ Years Experience"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 17,
                            ),
                            Text(" (426)"),
                            SizedBox(
                              width: 30.w,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "Edite",
                                  style: TextStyle(color: Colors.red.shade900),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              BoldText("Others"),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      background: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.delete),
                            Text("Delete")
                          ],
                        ),
                      ),
                        key: ValueKey(index),
                    // onDismissed: (direction) {
                    //   setState(() {
                    //
                    //   });
                    // },
                    child: cartItem());
                  },
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.h),
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Select item: '),
                        BoldText("3"),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Subtotal: '),
                        BoldText("\$589.00"),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('discount (%20): '),
                        BoldText("\$117.80"),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey,
                      direction: Axis.horizontal,
                      dashLength: 4.w,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Total: '),
                        redText("\$471.20"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => track_order(),));
                },
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue
                  ),
                  child: Center(
                    child: Text("CHECK OUT", style: TextStyle(color: Colors.white, fontSize: 20.sp),),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
