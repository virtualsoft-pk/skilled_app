import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/verify_code.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final pageRoute = context.getSwipeablePageRoute<void>()!;

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
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            if (Responsive.isTablet(context))
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/forgot.png"),
              ),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: textColor),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Please enter the email address associate with your account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Row(
              children: const [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '*',
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            customTextField(text: "Enter your email"),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'SEND CODE',
              funct: () {
                context.navigator.push<void>(
                    SwipeablePageRoute(builder: (_) => const VerifyCode()));
                // Get.to(() => VerifyCode());
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
