import 'package:flutter/material.dart';
import 'package:skilled_app/utils/app_colors.dart';

bool obsecureTxt = true;


Widget customTextField({String? text , Icon? icon}){
  return TextFormField(
      obscureText: obsecureTxt,
      decoration: InputDecoration(
        filled: true,
        fillColor: greyColor,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: blueColor),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide:const BorderSide(
            color: deepOrangeColor,
          ),
        ),
        hintText: text,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff8D9196),
        ),
        suffixIcon: icon,
      ),
    );
}