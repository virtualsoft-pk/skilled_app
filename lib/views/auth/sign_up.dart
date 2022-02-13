import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: backgroundColor,
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.all(12),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: greyColor,
                    ),
                    child: Image.asset(
                      'assets/images/Vector.png',
                    ),
                  ),
                ),
              const  Text(
                  'Create a new account to join with us',
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
                      'Full Name',
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
                customTextField(
                  text: "Name"
                ),
                SizedBox(
                  height: 16,
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
                customTextField(text: "Enter your email"),
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
                customTextField(text: "Password"),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Password 8-16 charecter',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Confiem Password',
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
                customTextField(
                text: "Password"
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Date of birth'),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: greyColor,
                  ),
                  child: TextFormField(
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
                        borderSide: BorderSide(color: blueColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffE94235),
                        ),
                      ),
                      hintText: '20/3/2022',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D9196),
                      ),
                      suffixIcon: Container(
                        child: Image.asset(
                          'assets/calendar.png',
                          cacheHeight: 20,
                          cacheWidth: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // ElevattedButtonView(
                //   text: 'SIGN UP',
                //   funct: () {
                //     Get.to(() => QuizStartView());
                //   },
                // ),

                customButton("SIGN UP")
              ],
            ),
          ),
        ),
      ),
    );
  }
}