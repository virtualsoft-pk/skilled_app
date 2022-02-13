import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';



Widget customButton(
  String text, {
  VoidCallback? onPress,
  Color? textColor,
}) {
  return Container(
    width: Get.width,
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: textColor,
      boxShadow: const [
        // BoxShadow(
        //   blurRadius: 1.0,
        //   spreadRadius: 3,
        //   color: AppColors.black,
        //   offset: Offset(1.0, 1.0),
        // ),
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: Text(text),
      onPressed: onPress,
      color: primaryColor,
    ),
  );
}