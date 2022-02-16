
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/privacy.dart';
class Shield extends StatefulWidget {
  @override
  _ShieldState createState() => _ShieldState();
}
class _ShieldState extends State<Shield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.08,
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            title: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: InkWell(
                onTap: (){
                  modalBottomSheetMenu();
                },
                child: Text("Event details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            trailing: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Image.asset("Assets/unsplash_wD1LRb9OeEo.png"),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Wed,Jan 24 at 5:30 AM",
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 98),
            child: Text("2022 Design Meetup",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
  void modalBottomSheetMenu(){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(70)
      ),
        context: context,
        builder: (builder){
      return Container(
        height: Get.height*0.46,
        decoration: BoxDecoration
          (borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.05),
              Text("Did you sign up to\n            this?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                ),
              SizedBox(height: Get.height*0.03),
              Image.asset("Assets/Ellipse 583.png"),
              SizedBox(height: Get.height*0.02),
              Text("The Young Engineer Program",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              Text("InvestIN"),
              SizedBox(height: Get.height*0.04),
              InkWell(
                onTap: (){
                  Get.to(Privacy());
                },
                child: Container(
                  width: Get.width*0.9,
                  height: Get.height*0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFBC799)
                  ),
                  child: Center(child: Text("YES, ADD TO MY CALENDER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: Get.height*0.02),
              Container(
                width: Get.width*0.9,
                height: Get.height*0.09,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("No, don’t add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        ),
      );
    });
  }
}


