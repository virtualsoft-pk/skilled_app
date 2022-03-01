import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../utils/app_colors.dart';
import '../views/eventCalander/events_screen.dart';
import '../views/settings/privacy.dart';



Widget customBackButton(){
  return InkWell(
    onTap: (){
      Get.back();
    },
    child: Container(
                margin: const EdgeInsets.only(bottom: 20),
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
                    'assets/back.png',
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


modalBottomSheetMenu(BuildContext context){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(70)
      ),
        context: context,
        builder: (builder){
      return Container(
        height: Get.height*0.5,
        decoration: BoxDecoration
          (borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.025),
              Text("Did you sign up to\n this?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
                ),
              SizedBox(height: Get.height*0.03),
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/Ellipse 583.png" , fit: BoxFit.cover,)),
              SizedBox(height: Get.height*0.02),
              Text("The Young Engineer Program",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("InvestIN"),
              SizedBox(height: Get.height*0.025),
             

              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: CustomButton(
                  text: "YES, ADD TO MY CALENDER",
                  funct: (){
                    Get.to(()=> Events());
                  },
                ),
              ),
              SizedBox(height: Get.height*0.01),
              Container(
                // width: Get.width*0.9,
                 margin: EdgeInsets.symmetric(horizontal: 18),
                height:52,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text("No, don’t add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        ),
      );
    });
  }

