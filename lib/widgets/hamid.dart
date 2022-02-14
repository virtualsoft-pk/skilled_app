import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

Widget customButton(String name) {
  return Container(
    height: Get.height * 0.07,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: buttonColor,
    ),
    child: Center(
        child: Text(
      name.toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.w600),
    )),
  );
}

Row customAppBar(String title) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
            ),
          ),
        ),
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
