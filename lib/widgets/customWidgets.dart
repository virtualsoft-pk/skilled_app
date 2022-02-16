import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';


Widget customButton(String name) {
  return Container(
    height: Get.height * 0.07,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: buttonColor,
    ),
    child: Center(
        child: Text(
      name.toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.w600),
    )),
  );
}

Row customAppBar(String title) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
            ),
          ),
        ),
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

// Widget myAppBar({String? title, String? trialling, bool? iconContain}) {
//   return AppBar(
//     elevation: 0,
//     backgroundColor: Colors.transparent,
//     leading: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           Get.back();
//         },
//         child: Container(
//           padding: EdgeInsets.all(15),
//           decoration:
//               BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
//           child: Center(
//             child: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//               size: 15,
//             ),
//           ),
//         ),
//       ),
//     ),
//     title: Text(
//       title!,
//       style: TextStyle(color: Colors.black),
//     ),
//     actions: [
//       Icon(iconContain! ? Icons.edit : null),
//       Text(
//         trialling!,
//         style: TextStyle(color: Colors.black),
//       )
//     ],
//     centerTitle: true,
//   );
// }
//

Widget customTextField({String? text, Icon? icon}) {
  return TextFormField(
    // obscureText: obsecureTxt,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.withOpacity(0.5),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: blueColor),
        borderRadius: BorderRadius.circular(10),
      ),
      disabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
        borderSide: BorderSide(
          color: Color(0xffE94235),
        ),
      ),
      hintText: text,
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff8D9196),
      ),
      suffixIcon: icon,
    ),
  );
}

Container resizableButton(
    {required double HPadding,
    required double VPadding,
    required double border,
    required String name}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xffFBC799),
      borderRadius: BorderRadius.circular(border),
    ),
    padding: EdgeInsets.symmetric(horizontal: HPadding, vertical: VPadding),
    child: Text(name),
  );
}
