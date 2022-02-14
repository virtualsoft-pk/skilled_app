
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/utils/app_colors.dart';

Widget elevatedButton({text, Function? onpress}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
    ),
    onPressed: () {
      onpress!();
    },
    child: Text(
      text,
      style: GoogleFonts.manrope(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Widget myText({text, style, textAlign}) {
  return Text(
    text,
    style: style,
    textAlign: textAlign,
  );
}



