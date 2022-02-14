
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/quiz/quiz3.dart';
import 'package:skilled_app/views/quiz/quiz_questions.dart';
import 'package:skilled_app/widgets/hashir.dart';

import '../../widgets/checkbox.dart';

bool iscolored = false;

class Quiz02 extends StatefulWidget {
  @override
  _Quiz02State createState() => _Quiz02State();
}

class _Quiz02State extends State<Quiz02> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child:
            Column(
              children: [
                SizedBox(
                    height: screenheight*0.02
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: ()
                      {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz01()));
                      },
                      child: CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.black,),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidth*0.3,
                    ),
                    myText(text: "Quiz",style:  GoogleFonts.manrope(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                    )
                  ],
                ),
                SizedBox(
                  height: screenheight*0.03,
                ),
                myText(text: "Which would be your super power?",style:  GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(
                  height: screenheight*0.04,
                ),
                iscolored == false? InkWell(
                  onTap: (){
                    iscolored = true;
                    setState(() {

                    });
                  },
                  child: Container(

                    height: screenheight*0.076,
                    width: screenwidth*0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: myText(text: "Teleportation",style:  GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                          ),
                        ),
                        ChecksBox(),
                      ],
                    ),
                  ),
                )
                    :Container(

                  height: screenheight*0.076,
                  width: screenwidth*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                      color: Colors.green
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: myText(text: "Teleportation",style:  GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                        ),
                      ),
                      InkWell(
                          onTap: (){
                            setState(() {
                              iscolored = true;
                            });
                          },

                          child: ChecksBox()),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenheight*0.02,
                ),
                Container(
                  height: screenheight*0.076,
                  width: screenwidth*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: myText(text: "Invisibility",style:  GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                        ),
                      ),
                      ChecksBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight*0.02,
                ),
                Container(
                  height: screenheight*0.076,
                  width: screenwidth*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: myText(text: "Flying",style:  GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                        ),
                      ),
                      ChecksBox(),
                    ],
                  ),

                ),
                SizedBox(
                  height: screenheight*0.02,
                ),
                Container(
                  height: screenheight*0.076,
                  width: screenwidth*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: myText(text: "Time Travel",style:  GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                        ),
                      ),
                      ChecksBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight*0.17,
                ),
                Row(
                  children: [
                    Container(
                      width: screenwidth*0.8,
                      height: screenheight*0.006,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.green),
                    ),
                    SizedBox(
                      width: screenwidth*0.04,
                    ),
                    Text("1/5"),
                  ],
                ),
                SizedBox(
                  height: screenheight*0.03,
                ),
                Container(
                    width: screenwidth*3,
                    height: screenheight*0.09,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: elevatedButton(text: "NEXT",onpress: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz03()));})
                )

              ],
            ),
          ),
        )

    );
  }
}
