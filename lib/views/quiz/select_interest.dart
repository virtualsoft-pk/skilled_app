import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:skilled_app/views/quiz/how_to_know.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';


bool iscolored = false;

class Quiz03 extends StatefulWidget {
  @override
  _Quiz03State createState() => _Quiz03State();
}

class _Quiz03State extends State<Quiz03> {
  List multiChipList = [
    'Creative Writing',
    'Video editing ',
    'Graphic Design',
    'Programming',
    'Videogame Design',
    'Dance',
    'Astronomy',
    'Product Design',
  ];

  List multiChipEmptyList = [];
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
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (ctx) => Quiz02()));
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
                  Text(
                         "Quiz",
                        style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
               Text("Select any of these that you are interested in learning",
                    style: GoogleFonts.manrope(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
               const SizedBox(
                  height: 20,
                ),

                Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: multiChipList.map(
                        (e) {
                      return multiChipEmptyList
                          .contains(e)
                          ? InkWell(
                        onTap: (() {
                          multiChipEmptyList
                              .remove(e);
                          setState(() {});
                       Icon(Icons.clear);
                        }),
                        child: Chip(
                          backgroundColor: containercolor,
                          side: BorderSide(
                              color: Colors.black),
                          labelPadding:
                          EdgeInsets.all(7),
                          label: Text(e),
                        ),
                      )
                          : InkWell(
                        onTap: () {
                          multiChipEmptyList.add(e);
                          setState(() {});
                        },
                        child: Chip(
                          labelPadding:
                          EdgeInsets.all(8),
                          label: Text(e),
                          // Icon(Icons.clear,size: 14,color: Colors.blue,),
            useDeleteButtonTooltip: true,deleteIcon: Icon(Icons.clear,size: 14,),
                        deleteIconColor: Colors.green,

                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: screenheight * 0.22,
                ),

               Container(
                    width: screenwidth*3,
                    height: screenheight*0.09,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: CustomButton(text: "NEXT",funct: (){
                      Get.to(HowToKnow());
                    })
                )
              ],
            ),
          ),
        ));
  }
}
