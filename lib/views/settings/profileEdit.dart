import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  DateTime selectedDate = DateTime(2016, 1, 15);
  TextEditingController dob = TextEditingController();
  void _getDateFromUser(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 190,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            selectedDate = val;
                            dob.text =
                                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
                          });
                        }),
                  ),
                ],
              ),
            ));
  }

  File? image;
  final picker = ImagePicker();
  Future pickFunction() async {
    final pickImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickImage != null) {
      image = File(pickImage.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
        title: "Profile Edit",
        trailing: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 20,
            vertical: 20),
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  image == null
                      ? CircleAvatar(
                          radius: Get.height * 0.08,
                          backgroundImage:
                              AssetImage("assets/images/settingImage.png"),
                        )
                      : CircleAvatar(
                          radius: Get.height * 0.08,
                          backgroundImage: FileImage(image!),
                        ),
                  // child: Container(
                  //   child: Image.asset(
                  //     "assets/images/profilePic.png",
                  //     fit: BoxFit.cover,
                  //     height: Get.height * 0.1,
                  //     width: Get.width * 0.17,
                  //   ),
                  // ),

                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: InkWell(
                      onTap: pickFunction,
                      child: Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: buttonColor, shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/Camera.png",
                          fit: BoxFit.cover,
                          height: Get.height * 0.03,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    Text("Full name"),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    customTextField(text: "India Harris"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text("Email address"),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    customTextField(text: "indiaharris345@gmail.com"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text("Gender"),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    customTextField(text: "Female"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text("Date of birth"),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextFormField(
                      onTap: () {
                        _getDateFromUser(context);
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: greyColor,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: blueColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          borderSide: const BorderSide(
                            color: deepOrangeColor,
                          ),
                        ),
                        hintText: dob.text,
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8D9196),
                        ),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    CustomButton(
                      text: "Save changes",
                      funct: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
