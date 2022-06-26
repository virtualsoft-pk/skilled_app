import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateUs extends StatefulWidget {
  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.1),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Rate Our App",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: Get.height * 0.06),
            Image.asset("assets/Lastep.png"),
            SizedBox(height: Get.height * 0.05),
            Text(
              "Rate your experience",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Get.height * 0.01),
            Text(
              "How would you rate your experience?",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: Get.height * 0.02),
            Container(
                width: Get.width * 0.43,
                height: Get.height * 0.094,
                decoration: BoxDecoration(
                    // color: Color(0xffE5E5E5),
                    border: Border.all(
                        color: Color(
                          0xffF4F4F5,
                        ),
                        width: 2),
                    borderRadius: BorderRadius.circular(42)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: Get.height * 0.03),
                        Image.asset("assets/playstore 1.png")
                      ],
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rate submit on",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "Google Play",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: Get.height * 0.06,
            ),
            Row(
              children: [
                SizedBox(width: Get.width * 0.24),
                Icon(
                  Icons.star,
                  size: 34,
                  color: Color(0xffDC8436),
                ),
                SizedBox(width: Get.width * 0.013),
                Icon(
                  Icons.star,
                  size: 34,
                  color: Color(0xffDC8436),
                ),
                SizedBox(width: Get.width * 0.013),
                Icon(
                  Icons.star,
                  size: 34,
                  color: Color(0xffDC8436),
                ),
                SizedBox(width: Get.width * 0.013),
                Icon(
                  Icons.star,
                  size: 34,
                  color: Color(0xffDC8436),
                ),
                SizedBox(width: Get.width * 0.013),
                Icon(
                  Icons.star_border,
                  size: 34,
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "4.0",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              height: Get.height * 0.07,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: Get.width * 0.9,
              height: Get.height * 0.077,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFBC799)),
              child: Center(
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
