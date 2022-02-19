
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';


class Quiz_07 extends StatefulWidget {
  @override
  _Quiz_07State createState() => _Quiz_07State();
}

class _Quiz_07State extends State<Quiz_07> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
          child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: screenheight * 0.05),
            Container(
              height: screenheight * 0.07,
              width: screenwidth * 0.9,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(22)),
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  errorBorder: InputBorder.none,
                  errorStyle: TextStyle(fontSize: 0, height: 0),
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
                  prefixIcon: Icon(Icons.search,color: dividercolor,),

                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: screenheight*0.03,
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
              height: screenheight*0.02,
            ),
            chipList()
              ],
            )

    )
    )
    )

    );
  }
}