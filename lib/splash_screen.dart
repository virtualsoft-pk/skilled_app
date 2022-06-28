import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skilled_app/views/onboarding/onboarding.dart';
import 'package:skilled_app/views/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: Responsive.isTablet(context) ? 300 : 150,
          width: Responsive.isTablet(context) ? 300 : 150,
          child: Image.asset("assets/images/skilldlogo.jpg"),
        ),
      ),
    );
  }
}
