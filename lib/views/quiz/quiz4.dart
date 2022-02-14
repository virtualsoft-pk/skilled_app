import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/model/about_model.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/quiz3.dart';
import 'package:skilled_app/views/quiz/quiz_result.dart';

import '../../widgets/hashir.dart';

class Quiz_04 extends StatefulWidget {
  @override
  _Quiz_04State createState() => _Quiz_04State();
}

class _Quiz_04State extends State<Quiz_04> {
  List<About> about = [
    About(
      image: 'assets/icons/search.png',
      name: 'Search Engine',
    ),
    About(image: 'assets/icons/property.png', name: 'School'),
    About(image: 'assets/icons/persons.png', name: 'Friends/ Family/ Colleagues'),
    About(image: 'assets/images/instagram.png', name: 'Instagram'),
    About(image: 'assets/images/youtube.png', name: 'You Tube'),
    About(image: 'assets/images/tictok.png', name: 'TikTok'),
    About(image: 'assets/images/twitter.png', name: 'Twitter'),
  ];
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: screenheight * 0.02),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (ctx) => Quiz03()));
                  },
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.grey[200],
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 6),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenwidth * 0.3,
                ),
                myText(
                    text: "Quiz",
                    style: GoogleFonts.manrope(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            SizedBox(
              height: screenheight * 0.03,
            ),
            myText(
                text: "How Did You Hear About Us?",
                style: GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: screenheight * 0.001,
            ),
            Container(
              width: screenwidth * 0.9,
              height: screenheight * 0.6,

              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: about.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: screenwidth * 0.01,
                        height: screenheight * 0.093,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: greycolor
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image(
                                image: AssetImage('${about[index].image}'),
                                width: screenwidth * 0.12,
                                height: screenheight * 0.14,
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.06,
                            ),
                           myText(text: '${about[index].name}',style:  GoogleFonts.manrope(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                           )
                           )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: screenheight*0.03,
            ),
            Container(
                width: screenwidth*3,
                height: screenheight*0.09,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: elevatedButton(text: "SEE RESULTS",onpress: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>QuizResultPage()));})
            )
          ]),
        )));
  }
}
