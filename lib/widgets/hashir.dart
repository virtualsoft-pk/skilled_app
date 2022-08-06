import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/bottom_navigation.dart';

import '../utils/app_colors.dart';

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
    overflow: TextOverflow.visible,
  );
}

Widget _buildChip(String label, Color color) {
  return GestureDetector(
    onTap: () {
      final NavController controller = Get.find();
      controller.updateForumIndex(0);
      Get.offAll(
        () => BottomNavigation(
          index: 2,
          threadForForumTab: label,
        ),
        transition: null,
      );
    },
    child: Chip(
      labelPadding: const EdgeInsets.all(4),
      label: Text(
        label,
        style: TextStyle(color: Colors.grey[900], fontSize: 14),
      ),
      backgroundColor: color,
      padding: const EdgeInsets.all(8.0),
    ),
  );
}

chipList() {
  return Wrap(
    spacing: 14,
    runSpacing: 4.0,
    children: <Widget>[
      _buildChip('UX/ Design', indicatorColor),
      _buildChip('Skillshare', indicatorColor),
      _buildChip('Udemy', indicatorColor),
      _buildChip('Best career for me', indicatorColor),
      _buildChip('2022 Career trends', indicatorColor),
    ],
  );
}
