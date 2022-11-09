
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget BoldText(String text){
  return Text(text, style: TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700
  ),);
}

Widget redText(String text){
  return Text(text, style: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: Colors.red.shade700
  ),);
}

Widget grayText(String text){
  return Text(text, style: TextStyle(
      fontSize: 12.sp,
    color: Colors.grey
  ),);
}

Widget grayText2(String text){
  return Text(text, style: TextStyle(
      fontSize: 15.sp,
      color: Colors.grey
  ),);
}
