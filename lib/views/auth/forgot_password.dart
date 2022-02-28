import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/verify_code.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:skilled_app/widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          width: double.infinity,
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              customBackButton(),
           
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
             const Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: textColor),
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
                height: MediaQuery.of(context).size.height * 0.05,
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
            const  SizedBox(
                height: 32,
              ),
              CustomButton(
                text: 'SEND CODE',
                funct: () {
                  Get.to(() => VerifyCode());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
