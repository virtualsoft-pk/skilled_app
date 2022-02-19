import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:skilled_app/widgets/hashir.dart';

import '../../widgets/checkbox.dart';
import '../../widgets/custom_button.dart';

bool iscolored = false;

class Quiz01 extends StatefulWidget {
  @override
  _Quiz01State createState() => _Quiz01State();
}

class _Quiz01State extends State<Quiz01> {

  bool value = false;
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Container(
          margin:const EdgeInsets.symmetric(horizontal: 16),
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenheight*0.02
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customBackButton(),
                      SizedBox(
                        width: screenwidth*0.3,
                      ),
                     Container(
                       height: 40,
                       child: Center(
                         child: Text( "Quiz",style:  GoogleFonts.manrope(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         )
                         ),
                       ),
                     )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight*0.02,
                ),
                Text( "How would your friends describe you?",style:  GoogleFonts.manrope(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                )),
                SizedBox(
                  height: screenheight*0.03,
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
                    border: Border.all(color: quizBorderColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: myText(text: "Funny",style:  GoogleFonts.manrope(
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
                   color: containercolor
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 13),
                       child: myText(text: "Funny",style:  GoogleFonts.manrope(
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
                  color: lightGreenColor,
                      border: Border.all(color: Colors.black)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: myText(text: "Intelligence",style:  GoogleFonts.manrope(
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
                        child: myText(text: "Creative",style:  GoogleFonts.manrope(
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
                        child: myText(text: "Kind",style:  GoogleFonts.manrope(
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
                    child: CustomButton(text: "NEXT",funct: (){
                      Get.to(SelectInterest());
                    })
                )

              ],
            ),
          ),
        ),
      )

    );
  }
}
