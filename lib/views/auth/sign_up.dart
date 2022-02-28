import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';

import '../../widgets/custom_widgets.dart';
import '../../widgets/custom_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             customBackButton(),

           const  Text(
                'Create new account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              SizedBox(height: 5.0),
            const  Text(
                'Create a new account to join with us',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
            const  SizedBox(
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
              customTextField(text: "Password" , obsecure: true),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4),
                    padding: const EdgeInsets.only(bottom: 10),
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
              text: "Password",
              obsecure: true
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
                        'assets/images/calendar.png',
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
              CustomButton(
                text: 'SIGN UP',
                funct: () {
                  // Get.to(() => QuizStartView());
                },
              ),

             
            ],
          ),
        ),
      ),
    );
  }
}
