import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/quiz/how_to_know.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_widgets.dart';

bool iscolored = false;

class SelectInterest extends StatefulWidget {
  @override
  _SelectInterestState createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customBackButton(() {}),
                  Container(
                    margin: EdgeInsets.only(top: Get.height * 0.01),
                    child: Text(
                      "Quiz",
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text("Select any of these that you are interested in learning",
                  style: GoogleFonts.manrope(
                    fontSize: 28,
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
                    return multiChipEmptyList.contains(e)
                        ? InkWell(
                            onTap: (() {
                              multiChipEmptyList.remove(e);
                              setState(() {});
                              Icon(Icons.clear);
                            }),
                            child: Chip(
                              backgroundColor: containercolor,
                              side: BorderSide(color: Colors.black),
                              labelPadding: EdgeInsets.all(7),
                              label: Text(e),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              multiChipEmptyList.add(e);
                              setState(() {});
                            },
                            child: Chip(
                              labelPadding: EdgeInsets.all(8),
                              label: Text(e),
                              // Icon(Icons.clear,size: 14,color: Colors.blue,),
                              useDeleteButtonTooltip: true,
                              deleteIcon: Icon(
                                Icons.clear,
                                size: 14,
                              ),

                              deleteIconColor: Colors.green,
                            ),
                          );
                  },
                ).toList(),
              ),

              //  Container(
              //       width: screenwidth*3,
              //       height: screenheight*0.09,
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              //       child: CustomButton(text: "NEXT",funct: (){
              //         Get.to(HowToKnow());
              //       })
              //   )
              Spacer(),
              multiChipEmptyList.length == 0
                  ? SizedBox()
                  : CustomButton(
                      text: "NEXT",
                      funct: () {
                        Get.to(() => HowToKnow());
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
