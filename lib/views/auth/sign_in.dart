import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/forgot_password.dart';
import 'package:skilled_app/views/auth/sign_up.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/evolvated_button.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                padding: const EdgeInsets.all(12),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: greyColor,
                ),
                child: Image.asset(
                  'assets/Vector.png',
                ),
              ),
             const Text(
                'Welcome Back !',
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Please login to your account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff494F58),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  Text(
                    'Email',
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
              customTextField(text:"Enter your Email"),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: const [
                  Text(
                    'Password',
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
              customTextField(text:"Password" , icon: const Icon(Icons.visibility_off)),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.2),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      }),
                const  Text(
                    'Remember me',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                const  Spacer(),
                  InkWell(
                    onTap: () {
                      
                      Get.to(() => const ForgotPassword());
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            const  Spacer(),
              ElevattedButtonView(text: 'LOG IN', funct: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               const Text(
                    'Dont\' have account?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignUpView());
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: blueColor,
                      ),
                    ),
                  )
                ],
              ),
            const SizedBox(
                height: 32,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                alignment: Alignment.center,
                child: const Text(
                  'Continue as guest',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
