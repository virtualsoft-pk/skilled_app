import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import '../../widgets/custom_button.dart';

class QuizStartDemo extends StatefulWidget {
  const QuizStartDemo({Key? key}) : super(key: key);

  @override
  State<QuizStartDemo> createState() => _QuizStartDemoState();
}

class _QuizStartDemoState extends State<QuizStartDemo> {
  
  bool isSkip = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          height: Get.height,
          decoration:const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/unsplash_wD1LRb9OeEo.png'),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Group 12538.png',
                  height: 80,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: isSkip == true
                    ? Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(bottom: 30, right: 20),
                        child: TextButton(
                            onPressed: () {
                              isSkip = false;
                              setState(() {});
                            },
                            child:const Text(
                              'Skip',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff494F58),
                              ),
                            )),
                      )
                    : CustomButton(
                        text: 'NEXT',
                        funct: (){
                          Get.to(()=> QuizStart());
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
