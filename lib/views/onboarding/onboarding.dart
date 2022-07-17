import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/utils/app_const.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/views/onboarding/onboarding_widget.dart' as o;
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../responsive.dart';

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
    print(Responsive.isTablet(context));
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              if (Responsive.isTablet(context))
                SizedBox(
                  height: Get.height * 0.1,
                ),
              SizedBox(
                width: Responsive.isTablet(context)
                    ? Get.width * 0.6
                    : double.infinity,
                height: Responsive.isTablet(context)
                    ? Get.height * 0.75
                    : Get.height * 0.86,
                child: o.OnBoard(
                  imageWidth: Responsive.isTablet(context)
                      ? Get.width * 0.5
                      : Get.width * 0.8,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account ? ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SignIn());
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: blueColor),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.navigator.push<void>(
                      SwipeablePageRoute(builder: (_) => QuizStart()));
                  // Get.to(
                  //   () => BottomNavigation(),
                  // );
                },
                child: const Text(
                  "Continue as a guest",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: grey900),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Positioned(
            top: Responsive.isTablet(context)
                ? Get.height * 0.05
                : Get.height * 0.07,
            right: 16,
            child: InkWell(
              onTap: () {
                Get.to(() => SignIn());
              },
              child: const Text(
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
