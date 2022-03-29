import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffF4F4F5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 18),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.032,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'How it works',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    Text(
                      'Watch the short video below,\nbefore getting started, to learn about Skilld.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.045,
              ),
              Container(
                width: double.infinity,
                height: Get.height * 0.38,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/userdemo.png'),
                      fit: BoxFit.fill,
                      width: Get.width,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: Get.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(child: Icon(Icons.play_arrow)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.014,
              ),
              Text(
                'Watch More Videos',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => QuizStart());
                  },
                  minWidth: double.infinity,
                  height: 62,
                  color: Color(0xffFBC799),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
