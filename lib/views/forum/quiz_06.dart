import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/forum.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/hashir.dart';
import '../quiz/videos_screen.dart';

class CreatePostOnForum extends StatefulWidget {
  const CreatePostOnForum({Key? key}) : super(key: key);

  @override
  _CreatePostOnForumState createState() => _CreatePostOnForumState();
}

class _CreatePostOnForumState extends State<CreatePostOnForum> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenheight * 0.02),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
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
                              width: screenwidth * 0.2,
                            ),
                            myText(
                                text: "Create Post",
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: greycolor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              myText(
                                  text: 'A-level Options',
                                  style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  focusColor: null,
                                  //hint: Text('This month'),
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
                                  onChanged: (_) {},
                                ),
                              )
                            ],
                          ),
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
                        SizedBox(
                          height: screenheight * 0.0,
                        ),
                        Container(
                          width: screenwidth * 0.9,
                          height: screenheight * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: greycolor),
                          child: TextFieldTags(
                              tagsStyler: TagsStyler(
                                  tagTextStyle: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                  tagDecoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  tagCancelIcon: Icon(Icons.cancel,
                                      size: 18.0, color: Colors.black),
                                  tagPadding: const EdgeInsets.all(6.0)),
                              textFieldStyler: TextFieldStyler(
                                  textFieldBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  helperText: '',
                                  hintText: ''),
                              onTag: (tag) {},
                              onDelete: (tag) {},
                              validator: (tag) {
                                if (tag.length > 15) {
                                  return "hey that's too long";
                                }
                                return null;
                              }),
                        ),
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
                          height: screenheight * 0.15,
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
                      ]))),
        ));
  }
}
