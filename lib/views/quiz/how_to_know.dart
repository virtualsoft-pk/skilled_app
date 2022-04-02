import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/model/about_model.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/quiz_result.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../../widgets/custom_widgets.dart';
import '../../widgets/hashir.dart';

class HowToKnow extends StatefulWidget {
  @override
  _HowToKnowState createState() => _HowToKnowState();
}

class _HowToKnowState extends State<HowToKnow> {
  List<About> about = [
    About(
      image: 'assets/icons/search.png',
      name: 'Search Engine',
    ),
    About(image: 'assets/icons/property.png', name: 'School'),
    About(
        image: 'assets/icons/persons.png', name: 'Friends/ Family/ Colleagues'),
    About(image: 'assets/images/instagram.png', name: 'Instagram'),
    About(image: 'assets/images/youtube.png', name: 'You Tube'),
    About(image: 'assets/images/tictok.png', name: 'TikTok'),
    About(image: 'assets/images/twitter.png', name: 'Twitter'),
  ];

  int selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customBackButton(() {}),
                  SizedBox(
                    height: screenheight * 0.01,
                  ),
                  Text(
                    "How Did You Hear About Us?",
                    style: GoogleFonts.manrope(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 22),
                    width: screenwidth * 0.90,
                    height: screenheight * 0.6,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: about.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(
                                () {
                                  selectedItem = index;
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 8),
                              width: screenwidth * 0.01,
                              height: 62,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: selectedItem == index
                                      ? containercolor
                                      : greycolor),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Image(
                                      image:
                                          AssetImage('${about[index].image}'),
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenwidth * 0.06,
                                  ),
                                  myText(
                                      text: '${about[index].name}',
                                      style: GoogleFonts.manrope(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: selectedItem == -1
                    ? SizedBox()
                    : CustomButton(
                        text: "SEE RESULTS",
                        funct: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => QuizResultPage(),
                            ),
                          );
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
