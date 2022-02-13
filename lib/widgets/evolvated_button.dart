import 'package:flutter/material.dart';
import 'package:skilled_app/utils/app_colors.dart';

class ElevattedButtonView extends StatelessWidget {
  ElevattedButtonView({Key? key, this.text, this.funct}) : super(key: key);
  String? text;
  Function? funct;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      height: 62,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
        ),
        onPressed: () {
          funct!();
        },
        child:  Text(
          text!,
          style: TextStyle(
            letterSpacing: 2,
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
