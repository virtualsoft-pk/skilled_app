import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';

class SearchOnForum extends StatefulWidget {
  @override
  _SearchOnForumState createState() => _SearchOnForumState();
}

class _SearchOnForumState extends State<SearchOnForum> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (Responsive.isMobile(context)) customBackButton(),
                      if (Responsive.isTablet(context))
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: Image(
                            image: AssetImage(
                              'assets/image 29.png',
                            ),
                            height: 20,
                          ),
                        ),
                      Container(
                        height: screenheight * 0.07,
                        width: screenwidth * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22)),
                        child: TextFormField(
                          onTap: Responsive.isTablet(context)
                              ? () {
                                  final NavController controller = Get.find();
                                  controller.updateForumIndex(2);
                                }
                              : null,
                          style: const TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            errorStyle: const TextStyle(fontSize: 0, height: 0),
                            focusedErrorBorder: InputBorder.none,
                            fillColor: Colors.deepOrangeAccent[2],
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            hintText: ('Search in forum'),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: dividercolor,
                            ),
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myText(
                              text: 'Recent searches',
                              style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          myText(
                              text: 'Clear all',
                              style: GoogleFonts.manrope(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                //   color: AppColors.dividercolor
                              )),
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.02,
                      ),
                      chipList()
                    ],
                  )),
            ),
            if (Responsive.isTablet(context))
              SizedBox(
                width: Get.width * 0.25,
              )
          ],
        ))));
  }
}
