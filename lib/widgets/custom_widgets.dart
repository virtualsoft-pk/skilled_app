import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';



Widget customBackButton(){
  return InkWell(
    onTap: (){
      Get.back();
    },
    child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                padding: const EdgeInsets.all(12),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: greyColor,
                ),
                child: Container(
                  margin: const EdgeInsets.all(2.5),
                  child: Image.asset(
                    'assets/images/Vector.png',
                  ),
                ),
              ),
  );
}

Widget customAppBar(String title) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: customBackButton(),
        ),
        SizedBox(width: Get.width * 0.08),
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: greyDarkColor),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Container resizableButton(
    {required double HPadding,
    required double VPadding,
    required double border,
    required String name}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xffFBC799),
      borderRadius: BorderRadius.circular(border),
    ),
    padding: EdgeInsets.symmetric(horizontal: HPadding, vertical: VPadding),
    child: Text(name),
  );
}

