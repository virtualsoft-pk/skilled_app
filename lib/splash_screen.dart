import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/views/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset("assets/images/skilldlogo.jpg"),
          ),
        ),
      ),
    );
  }
}
