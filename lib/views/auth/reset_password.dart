import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: tabAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 16),
        width: double.infinity,
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: Responsive.isTablet(context)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          mainAxisAlignment: Responsive.isTablet(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Reset password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Type your new passcode.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Text(
                  'New Password',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '*',
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            customTextField(text: "New Password", obsecure: true),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: const [
                Text(
                  'Confirme New Password',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '*',
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            customTextField(text: "Confirm New Password", obsecure: true),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'RESET PASSWORD',
              funct: () {
                Get.to(() => const SignIn());
              },
            ),
            if (Responsive.isTablet(context))
              SizedBox(
                height: Get.height * 0.08,
              ),
          ],
        ),
      ),
    );
  }
}
