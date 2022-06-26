import 'package:flutter/cupertino.dart';
import '../utils/app_colors.dart';

Widget backButton({String? imageUrl}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    padding: const EdgeInsets.all(12),
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      color: greyColor,
    ),
    child: Image.asset(
      imageUrl!,
    ),
  );
}
