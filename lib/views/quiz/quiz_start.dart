import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/quiz/quiz_questions.dart';

import '../../widgets/hashir.dart';

class QuizStart extends StatefulWidget {
  @override
  _QuizStartState createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container
              (
              margin: EdgeInsets.only(left: 25,top: 180),
                width: screenwidth*0.8,
                child: Image.asset('assets/images/quiz_start.jpg')),
            SizedBox(
              height: 40,
            ),
            myText(
              text: 'Which career is right for me',
              style: GoogleFonts.manrope(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            myText(
              text: 'Use this fun quiz  to help us to find a \n                    best career for you.',
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: screenheight*0.15,
            ),
            Container(
                width: screenwidth*3,
                height: screenheight*0.09,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: elevatedButton(text: "START QUIZ",onpress: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz01()));})
            )

          ],
        ),
      ),
    );
  }
}
