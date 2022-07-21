import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/views/settings/profileEdit.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  File? image;
  final picker = ImagePicker();
  Future pickFunction() async {
    final pickImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickImage != null) {
        image = File(pickImage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
          title: "Account Details",
          trailing: InkWell(
            onTap: () {
              Get.to(() => const ProfileEdit());
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20, top: 8, left: 10),
              child: Text(
                "Edit",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.35 : 20,
            vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: Get.height * 0.078,
                backgroundColor: Colors.grey.withOpacity(0.3),
                backgroundImage: const AssetImage(
                  "assets/images/profilePic.png",
                )
                // child: Container(
                //   child: Image.asset(
                //     "assets/images/profilePic.png",
                //     fit: BoxFit.cover,
                //     height: Get.height * 0.1,
                //     width: Get.width * 0.17,
                //   ),
                // ),
                ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const SizedBox(
              height: 8,
            ),
            accountDetailtile(
                "assets/images/user.png", "Full Name", "India Harris"),
            const SizedBox(
              height: 8,
            ),
            accountDetailtile(
                "assets/images/mail.png", "Email", "indiaharris345@gmail.com"),
            const SizedBox(
              height: 8,
            ),
            accountDetailtile("assets/images/genders.png", "Gender", "Female"),
            const SizedBox(
              height: 8,
            ),
            accountDetailtile("assets/images/simpleCalander.png",
                "Date of Birth", "09/09/2006"),
          ],
        ),
      ),
    );
  }

  Widget accountDetailtile(String image, String text, [String? desc]) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffF4F4F5),
            ),
            child: Image.asset(
              image,
              height: 16,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              if (desc != null)
                Text(
                  desc,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
