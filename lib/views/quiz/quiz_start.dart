import 'package:flutter/material.dart';
import 'package:skilled_app/views/quiz/quiz_questions.dart';
import 'package:skilled_app/views/quiz/quiz_questions.dart';
import '../../widgets/custom_button.dart';

class QuizStart extends StatefulWidget {
  @override
  _QuizStartState createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    left: 25, top: MediaQuery.of(context).size.height * 0.18),
                width: screenwidth * 0.8,
                child: Image.asset('assets/images/quiz_start.jpg')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),

           const Text(
              "Which career is right for me",
              style: TextStyle(fontSize: 24,letterSpacing: 0.5, fontWeight: FontWeight.w700),
            ),
            
           const SizedBox(
              height: 2,
            ),

             const Text(
              "Use this fun quiz  to help us to find a \nbest career for you.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
           
            SizedBox(
              height: screenheight * 0.15,
            ),
            Container(
                width: screenwidth * 3,
                height: screenheight * 0.09,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: CustomButton(
                    text: "START QUIZ",
                    funct: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) => QuizQuestions()));
                    }))
          ],
        ),
      ),
    );
  }
}
