import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/utils/app_const.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/views/onboarding/onboarding_widget.dart' as o;
import '../feeds/bottom_navigation/bottom_navigation.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: AppConst.NBOARDING_1_TEXT,
      description: AppConst.ONBOARDING_1_SUB_TEXT,
      imgUrl: "assets/images/onboard1.png",
    ),
    const OnBoardModel(
      title: AppConst.ONBOARDING_2_TEXT,
      description: AppConst.ONBOARDING_2_SUB_TEXT,
      imgUrl: 'assets/images/onboard2.png',
    ),
    const OnBoardModel(
      title: AppConst.ONBOARDING_3_TEXT,
      description: AppConst.ONBOARDING_3_SUB_TEXT,
      imgUrl: 'assets/images/onboard3.png',
    ),
    const OnBoardModel(
      title: AppConst.ONBOARDING_4_TEXT,
      description: AppConst.ONBOARDING_4_SUB_TEXT,
      imgUrl: 'assets/images/onboard4.png',
    ),
    const OnBoardModel(
      title: AppConst.ONBOARDING_5_TEXT,
      description: AppConst.ONBOARDING_5_SUB_TEXT,
      imgUrl: 'assets/images/onboard5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: Get.height * 0.86,
                child: o.OnBoard(
                  onBoardData: onBoardData,
                  pageController: _pageController,
                  titleStyles: const TextStyle(
                    color: textColor,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                  ),
                  skipButton: const Text(""),
                  descriptionStyles: const TextStyle(
                    color: textColor,
                    fontSize: 17.0,
                  ),
                  pageIndicatorStyle: const PageIndicatorStyle(
                    activeColor: blueColor,
                    width: 70,
                    inactiveColor: indicatorColor,
                    activeSize: Size(10, 10),
                    inactiveSize: Size(8, 8),
                  ),
                  nextButton: OnBoardConsumer(
                    builder: (context, ref, child) {
                      final state = ref.watch(onBoardStateProvider);
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          text: state.isLastPage ? 'GET STARTED' : 'NEXT',
                          funct: () {
                            state.isLastPage ? Get.to(() => SignIn()) : null;
                            _onNextTap(state);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => SignIn());
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: blueColor),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Get.to(
                    () => BottomNavigation(),
                  );
                },
                child: const Text(
                  "Continue as a guest",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: grey900),
                ),
              ),
            ],
          ),
          Positioned(
            top: Get.height * 0.07,
            right: 13,
            child: InkWell(
              onTap: () {
                Get.to(() => SignIn());
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff494F58),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
