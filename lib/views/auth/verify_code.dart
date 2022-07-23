import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/reset_password.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../responsive.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({this.isFromSignUp = false, Key? key}) : super(key: key);

  final bool isFromSignUp;

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      // border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            if (Responsive.isMobile(context))
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            const Text(
              'Verification code',
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
              'Enter 4 digit has been sent to your email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: Get.height * 0.07,
            ),
            PinPut(
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              eachFieldHeight: 80,
              eachFieldWidth: 70,
              fieldsCount: 4,
              onSubmit: (String pin) => _showSnackBar(pin, context),
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(20.0), color: greyColor),
              selectedFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(20.0), color: greyColor),
              followingFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(20.0),

                color: greyColor,
                // border: Border.all(
                //   color: Colors.deepPurpleAccent.withOpacity(.5),
                // ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resend code?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: blueColor,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              funct: () {
                context.navigator.push<void>(SwipeablePageRoute(
                    builder: (_) => widget.isFromSignUp
                        ? const SignIn()
                        : const ResetPassword()));
                // Get.to(() => ResetPassword());
              },
              text: 'SUBMIT CODE',
            ),
            if (Responsive.isTablet(context))
              const SizedBox(
                height: 120,
              ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: SizedBox(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: primaryColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
