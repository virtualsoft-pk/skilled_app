import 'package:flutter/material.dart';
import 'package:skilled_app/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.text, this.funct}) : super(key: key);
  String? text;
  Function? funct;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 55,
      width: double.infinity,
      child: RaisedButton(
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)
        ),
        onPressed: () {
          funct!();
        },
        child:Text(
          text!,
          style:const TextStyle(
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
