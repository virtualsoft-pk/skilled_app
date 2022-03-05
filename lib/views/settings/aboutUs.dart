
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/feedback.dart';

class AboustUs extends StatefulWidget {
  @override
  _AboustUsState createState() => _AboustUsState();
}

class _AboustUsState extends State<AboustUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            ListTile(

              leading: InkWell(
                onTap: (){
                  Get.back();
                },
                child: CircleAvatar(
                    backgroundColor: Color(0xffF4F4F5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.black,
                    )),
              ),
              title:  InkWell(
                onTap: () {
                  // Get.to(() => a.Feedback());
                  // Get.to(()=> RateUs());
                },
                child: Container(
                  margin: EdgeInsets.only(left: Get.width*0.2),
                  child: Text(
                    "About Us ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),

            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "Skilld: Empowered to Discover",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Our aim is to empower young people to discover more about industries and jobs that interest them, so they can make informed career path choices and so they can learn skills and develop behaviours.",
              style: TextStyle(height: 1.6, fontSize: 16),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Text("About Us",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.014,
            ),
            Container(
              width: double.infinity,
              height: Get.height*0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/unsplash_wD1LRb9OeEo.png'
                      ),
                      fit: BoxFit.cover
                  )
              ),

            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Row(
              children: [

                Container(
                  width: Get.width * 0.02,
                  height: Get.height * 0.01,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFBC799)),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  "How can I find out more about Skilld?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Go to www.skilldcareerpath.com to learn more about our vision, core values, how we started    and even how you can get involved!",
              style: TextStyle(fontSize: 16, height: 1.6),
            )
          ],
        ),
      ),
    );
  }
}
