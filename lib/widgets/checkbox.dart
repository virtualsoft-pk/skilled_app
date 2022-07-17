
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/utils/app_colors.dart';

class ChecksBox extends StatefulWidget {


  @override
  _ChecksBoxState createState() => _ChecksBoxState();
}

class _ChecksBoxState extends State<ChecksBox> {

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return
      Checkbox(
        side: BorderSide(color: quizBorderColor ),
        value: value,
        onChanged: (val) {
          setState(() {
            value = !value;
          });
        },
        activeColor: Colors.white,
        checkColor: Colors.black,


        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),side: BorderSide(color: Colors.black, )),


      );

  }
}