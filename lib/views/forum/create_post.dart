import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/tagcontroller.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:skilled_app/widgets/taf_field.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/hashir.dart';

class CreatePostOnForum extends StatefulWidget {
  const CreatePostOnForum({Key? key}) : super(key: key);

  @override
  _CreatePostOnForumState createState() => _CreatePostOnForumState();
}

class _CreatePostOnForumState extends State<CreatePostOnForum> {
  List<String> tagsList = [];
  List<String> selectedTags = [];
  TextEditingController tagController = TextEditingController();
  List<String> careerList = [
    'Doctor',
    'File Maker',
    'UX Designer',
    'Musician',
  ];

  var selectedThreadOption = 'A-level Options';

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: tabAppBar(title: "Create Post"),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal:
                      Responsive.isTablet(context) ? Get.width * 0.2 : 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenheight * 0.02),
                    SizedBox(
                      height: screenheight * 0.03,
                    ),
                    myText(
                        text: 'Create post on forum',
                        style: GoogleFonts.manrope(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: screenheight * 0.03,
                    ),
                    myText(
                        text: 'Select thread ',
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Container(
                        //margin: EdgeInsets.symmetric(horizontal: 10),
                        height: screenheight * 0.08,
                        width: screenwidth * 0.9,
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.isTablet(context) ? 24 : 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: greycolor),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedThreadOption,
                            // focusColor: null,
                            // hint: Text('This month'),
                            items: <String>[
                              'A-level Options',
                              'B-level Options',
                              'C-level Options',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (val) {
                              setState(() {
                                selectedThreadOption = val as String;
                              });
                            },
                          ),
                        )

                        //  Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     // myText(
                        //     //     text: 'A-level Options',
                        //     //     style: GoogleFonts.manrope(
                        //     //       fontSize: 16,
                        //     //       fontWeight: FontWeight.w500,
                        //     //     )),

                        //   ],

                        ),
                    SizedBox(
                      height: screenheight * 0.02,
                    ),

                    Row(
                      children: [
                        myText(
                            text: 'Add tag',
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          width: 2,
                        ),
                        myText(
                            text: ' (Up to 3 tags)',
                            style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: dividercolor)),
                      ],
                    ),

                    const TagField(
                      tagType: TagType.post,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    GetBuilder<TagController>(builder: (controller) {
                      return controller.postTags.isEmpty
                          ? const Center(
                              child: Text("No tag yet"),
                            )
                          : Container();
                    }),
                    SizedBox(
                      height: screenheight * 0.02,
                    ),
                    myText(
                        text: 'Description',
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Container(
                      width: screenwidth * 0.9,
                      height: screenheight * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: greycolor),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          style: TextStyle(),
                          decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            errorStyle: TextStyle(fontSize: 0, height: 0),
                            focusedErrorBorder: InputBorder.none,
                            fillColor: Colors.deepOrangeAccent[2],
                            //filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            hintText: ('What’s your question?'),
                            //  prefixIcon: Icon(Icons.search,color: AppColors.dividercolor,),

                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Responsive.isMobile(context)
                          ? screenheight * 0.15
                          : 24,
                    ),

                    // Container(
                    // width: screenwidth*3,
                    // height: screenheight*0.08,
                    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    //     child: elevatedButton(text: "Post",onpress: (){
                    //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz_07()));})
                    // ),

                    CustomButton(
                      text: 'POST',
                      funct: () {
                        Get.back();
                      },
                    ),
                  ])),
        ));
  }
}
