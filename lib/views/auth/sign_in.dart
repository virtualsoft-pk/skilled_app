import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/forgot_password.dart';
import 'package:skilled_app/views/quiz/quiz_demo.dart';
import 'package:skilled_app/views/auth/sign_up.dart';
import 'package:skilled_app/views/quiz/videos_screen.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../feeds/bottom_navigation/bottom_navigation.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool value = false;

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        color: backgroundColor,
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                color: lightgreyColor,
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Row(
              children: const [
                Text(
                  'Email',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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

            TextFormField(
              obscureText: !isVisible,
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
                hintText: "Password",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8D9196),
                ),
                suffixIcon:IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(!isVisible?Icons.visibility_off:Icons.visibility),
                ) ,
                // suffix: IconButton(
                //   padding: EdgeInsets.all(0),
                //   onPressed: (){
                //     setState(() {
                //       isVisible = !isVisible;
                //     });
                //   },
                //   icon: Icon(!isVisible?Icons.visibility_off:Icons.visibility),
                // )
              ),
            ),

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
            CustomButton(text: 'LOG IN', funct: () {
              Get.to(()=> VideoScreen());
              // Get.to(()=> QuizStartDemo());
            }),
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

          // Get.to(()=> BottomNavigation());

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    Get.to(()=> BottomNavigation());
                  },
                  child: const Text("Continue as a guest",style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: grey900),),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
