import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:skilled_app/views/quiz/how_to_know.dart';

import '../../model/about_model.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/hashir.dart';

bool iscolored = false;

class SelectInterest extends StatefulWidget {
  @override
  _SelectInterestState createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  List<Choice> choice = [
    Choice(name: 'Programming', operator: '+'),
    Choice(name: 'C++', operator: '-'),
    Choice(name: 'Creative writing', operator: '-'),
    Choice(name: 'Dance', operator: '-'),
    Choice(name: 'Product Design', operator: '-'),
    Choice(name: 'Grapic design', operator: '+'),
    Choice(name: 'C', operator: '+'),
    Choice(name: 'Design', operator: '+'),
    Choice(name: 'Language', operator: '+'),
  ];

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: screenheight * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                      
                      },
                      child: CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
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
                    text:
                        "Select any of these that you are interested in learning",
                    style: GoogleFonts.manrope(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),

                MultiSelectChipDisplay(

                  colorator: (String v) {
// return Colors.green;
                  },

                  //chipColor: Colors.red,
                  items: choice
                      .map((e) => MultiSelectItem(
                            e.operator,
                            e.name,

                          ))
                      .toList(),

                  onTap: (value) {

                    setState(() {

                    });
                  },
                ),
                SizedBox(
                  height: screenheight * 0.28,
                ),

                Container(
                    width: screenwidth*3,
                    height: screenheight*0.09,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: CustomButton(text: "NEXT",funct: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>HowToKnow()));})
                )
              ],
            ),
          ),
        ));
  }
}
