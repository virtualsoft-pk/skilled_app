import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/auth/verify_code.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  DateTime selectedDate = DateTime(2016, 1, 15);
  TextEditingController dob = TextEditingController();

  @override
  void initState() {
    dob.text = "DD/MM/YYYY";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 16),
          child: Column(
            crossAxisAlignment: Responsive.isTablet(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              const Text(
                'Create new account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
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
              customTextField(text: "Name"),
              const SizedBox(
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
              customTextField(text: "Password", obsecure: true),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: const Text(
                      '.',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Password should be 8-16 charactar',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Confirm Password',
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
              customTextField(text: "Password", obsecure: true),
              const SizedBox(
                height: 16,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Date of birth')),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onTap: () {
                  _getDateFromUser(context);
                },
                readOnly: true,
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
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    borderSide: const BorderSide(
                      color: deepOrangeColor,
                    ),
                  ),
                  hintText: dob.text,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8D9196),
                  ),
                  suffixIcon: const Icon(Icons.calendar_month_outlined),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'SIGN UP',
                funct: () {
                  Get.to(() => const VerifyCode(isFromSignUp: true));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _getDateFromUser(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 190,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            selectedDate = val;
                            dob.text =
                                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
                          });
                        }),
                  ),
                ],
              ),
            ));
  }
}
