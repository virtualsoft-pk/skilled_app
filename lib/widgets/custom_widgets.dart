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