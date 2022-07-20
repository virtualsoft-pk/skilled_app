import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildListTile(String image, String text, [String? desc]) {
  print(desc.toString());
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffF4F4F5),
          ),
          child: Image.asset(
            image,
            height: 16,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            if (desc != null)
              SizedBox(
                width: Get.width * 0.65,
                child: Text(
                  desc,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      ],
    ),
  );
}
