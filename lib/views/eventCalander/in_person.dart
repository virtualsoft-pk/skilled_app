import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/eventCalander/privacy.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../../widgets/custom_widgets.dart';

class In_Person extends StatefulWidget {
  @override
  _In_PersonState createState() => _In_PersonState();
}

class _In_PersonState extends State<In_Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              ListTile(
                leading: InkWell(
                  onTap: () {
                    dialougeBox();
                  },
                  child: CircleAvatar(
                      backgroundColor: Color(0xffF4F4F5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: Color(0xff5A5E67),
                      )),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Event details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                trailing: CircleAvatar(
                    backgroundColor: Color(0xffF4F4F5),
                    child: Icon(
                      Icons.share,
                      color: Color(0xff5A5E67),
                    )),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                  width: double.infinity,
                  height: Get.height * 0.2,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/unsplash_LETdkk7wHQkostazx.png",
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                height: Get.height * 0.01,
              ),
            const Text(
                "March 2022",
                style: TextStyle(
                    fontSize: 16, color: grey700, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Text("The Young Engineer Online Weekend",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: grey900)),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  // SizedBox(
                  //   width: Get.width * 0.0,
                  // ),
                  Container(
                    height: 12,
                    width: 12,
                    child: Image.asset("assets/carbon_user-multiple.png", fit: BoxFit.cover,)),
                  SizedBox(width: Get.width * 0.01),
                  Text(
                    "230 going ",
                    style: TextStyle(color: grey500, fontSize: 12 , fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: Get.width * 0.02),
                  Container(
                    width: 1,
                    height: 16,
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(width: Get.width * 0.02),
                  Image.asset("assets/Vector.png"),
                  SizedBox(width: Get.width * 0.01),
                  Text(
                    "Online event",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(width: Get.width * 0.025),
                  Container(
                    //  width: 150,
                    child: RatingBar.builder(
                      initialRating: 4.5,
                      minRating: 1,
                      itemSize: 20,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                children: [
                  
                  Text("Details",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600 , color: grey900)),
                ],
              ),
              SizedBox(
                height: Get.height * 0.009,
              ),
              Text(
                "Gain an immersive experience of Engineering alongside top professionals. Learn more by selecting, visit the website.",
                style: TextStyle(height: 1.9, color: Colors.grey),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Text(
                "2 day event, online for ages 12-14 or 15-18.",
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                children: [
                  
                  Text("Event host", style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  Image.asset("assets/Ellipse 583.png"),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "InvestIn",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Get.height * 0.001,
                      ),
                      Text(
                        "www.investin.com",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(width: Get.width * 0.03),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 9),
                        width: Get.width * 0.4,
                        height: Get.height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        child: Row(
                          children: [
                            SizedBox(width: Get.width * 0.03),
                            Icon(Icons.shopping_bag, color: Colors.grey),
                            Text(
                              "Add to Calendar ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),

              CustomButton(
                text: "VISIT THE WEBSITE",
                funct: (){
                 modalBottomSheetMenu(context);
                },
              )
            
            ],
          ),
        ),
      ),
    );
  }

  void dialougeBox() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              height: Get.height * 0.53,
              width: Get.width * 0.83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.07),
                  Image.asset(
                      "assets/casual-life-3d-white-envelope-with-blue-letter-in-it 2.png"),
                  SizedBox(height: Get.height * 0.03),
                  Text(
                    "Email Sent!",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Text("Please check your inbox "),
                  SizedBox(height: Get.height * 0.04),
                  Container(
                    width: Get.width * 0.5,
                    height: Get.height * 0.07,
                    decoration: BoxDecoration(
                        color: Color(0xffFBC799),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "BACK TO RESULTS ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.9),
                    )),
                  )
                ],
              ),
            ),
          );
        });
  }


   


}
