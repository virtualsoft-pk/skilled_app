import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          width: double.infinity,
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customBackButton(() {}),
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
                'Enter 4 digit has been sent to your email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
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
                children: [
                  Text(
                    'Confirme New Password',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
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
                  //  context.navigator.push<void>(
                  //       SwipeablePageRoute(builder: (_) => ResetPassword()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
