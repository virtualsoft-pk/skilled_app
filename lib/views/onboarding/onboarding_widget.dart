import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:flutter_onboard/src/contants/constants.dart';
import 'package:flutter_onboard/src/widgets/page_indicator.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skilled_app/views/auth/sign_in.dart';

import '../responsive.dart';

class OnBoard extends HookConsumerWidget {
  /// Data for OnBoard [List<OnBoardModel>]
  /// @Required
  final List<OnBoardModel> onBoardData;

  /// OnTapping skip button action
  final VoidCallback? onSkip;

  /// OnTapping done button action
  final VoidCallback? onDone;

  /// Controller for [PageView]
  /// @Required
  final PageController pageController;

  /// Title text style
  final TextStyle? titleStyles;

  /// Description text style
  final TextStyle? descriptionStyles;

  /// OnBoard Image width
  final double? imageWidth;

  /// OnBoard Image height
  final double? imageHeight;

  /// Skip Button Widget
  final Widget? skipButton;

  /// Next Button Widget
  final Widget? nextButton;

  /// Animation [Duration] for transition from one page to another
  /// @Default [Duration(milliseconds:250)]
  final Duration duration;

  /// [Curve] used for animation
  /// @Default [Curves.easeInOut]
  final Curve curve;

  /// [PageIndicatorStyle] dot styles
  final PageIndicatorStyle pageIndicatorStyle;

  const OnBoard({
    Key? key,
    required this.onBoardData,
    this.onSkip,
    this.onDone,
    required this.pageController,
    this.titleStyles,
    this.descriptionStyles,
    this.imageWidth,
    this.imageHeight,
    this.skipButton,
    this.nextButton,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.easeInOut,
    this.pageIndicatorStyle = const PageIndicatorStyle(
        width: 150,
        activeColor: Colors.blue,
        inactiveColor: Colors.blueAccent,
        activeSize: Size(12, 12),
        inactiveSize: Size(8, 8)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: _OnBoard(
        onBoardData: onBoardData,
        pageController: pageController,
        onSkip: onSkip,
        onDone: onDone,
        titleStyles: titleStyles,
        descriptionStyles: descriptionStyles,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        skipButton: skipButton,
        nextButton: nextButton,
        duration: duration,
        curve: curve,
        pageIndicatorStyle: pageIndicatorStyle,
      ),
    );
  }
}

class _OnBoard extends HookConsumerWidget {
  /// Data for OnBoard [List<OnBoardModel>]
  /// @Required
  final List<OnBoardModel> onBoardData;

  /// OnTapping skip button action
  final VoidCallback? onSkip;

  /// OnTapping done button action
  final VoidCallback? onDone;

  /// Controller for [PageView]
  /// @Required
  final PageController pageController;

  /// Title text style
  final TextStyle? titleStyles;

  /// Description text style
  final TextStyle? descriptionStyles;

  /// OnBoard Image width
  final double? imageWidth;

  /// OnBoard Image height
  final double? imageHeight;

  /// Skip Button Widget
  final Widget? skipButton;

  /// Next Button Widget
  final Widget? nextButton;

  /// Animation [Duration] for transition from one page to another
  /// @Default [Duration(milliseconds:250)]
  final Duration duration;

  /// [Curve] used for animation
  /// @Default [Curves.easeInOut]
  final Curve curve;

  /// [PageIndicatorStyle] dot styles
  final PageIndicatorStyle pageIndicatorStyle;

  const _OnBoard({
    Key? key,
    required this.onBoardData,
    this.onSkip,
    this.onDone,
    required this.pageController,
    this.titleStyles,
    this.descriptionStyles,
    this.imageWidth,
    this.imageHeight,
    this.skipButton,
    this.nextButton,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.easeInOut,
    this.pageIndicatorStyle = const PageIndicatorStyle(
        width: 150,
        activeColor: Colors.blue,
        inactiveColor: Colors.blueAccent,
        activeSize: Size(12, 12),
        inactiveSize: Size(8, 8)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onBoardState = ref.watch(onBoardStateProvider);
    final onBoardStateNotifier = ref.watch(onBoardStateProvider.notifier);

    final screenSize = MediaQuery.of(context).size;
    final double pageViewHeight = screenSize.height -
        skipContainerHeight -
        footerContentHeight -
        pageIndicatorHeight;

    return SafeArea(
      child: Column(
        children: <Widget>[
          // Container(
          //   color: Colors.amber,
          //   height: skipContainerHeight,
          //   alignment: Alignment.centerRight,
          //   child: skipButton ??
          //       TextButton(
          //         onPressed: () {
          //           _onSkipPressed(onSkip);
          //         },
          //         child: const Text(
          //           "",
          //           style: TextStyle(color: Colors.blueAccent),
          //         ),
          //       ),
          // ),

          Expanded(
            child: SizedBox(
              // color: Colors.red,
              height: pageViewHeight,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (page) => onBoardStateNotifier.onPageChanged(
                    page, onBoardData.length),
                itemCount: onBoardData.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Column(
                      children: <Widget>[
                        if (Responsive.isMobile(context))
                          const SizedBox(
                            height: 64,
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            top: index == 4
                                ? Get.height * 0.1
                                : Get.height * 0.06,
                          ),
                          height: MediaQuery.of(context).size.height * 0.25,
                          // width: 150,
                          // color: Colors.amber,
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => SignIn());
                                },
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    child: const Text(
                                      '',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              //  Positioned(
                              //         right: -Get.width * 0.2,
                              //         bottom: 0,
                              //         left: 0,
                              //         top: 0,
                              //         child: Container(
                              //           width: Get.width,
                              //           // padding: EdgeInsets.only(left: index == 2? Get.width*0.15 : 0),
                              //           child: Image.asset(
                              //             onBoardData[index].imgUrl,
                              //             width: imageWidth,
                              //             height: imageHeight,
                              //             fit: BoxFit.contain,
                              //           ),
                              //         ),
                              //       )

                              Container(
                                // margin: EdgeInsets.only(top: Get.height * 0.04),
                                width: double.infinity,
                                height: Get.height * 0.25,
                                padding: index == 0
                                    ? EdgeInsets.symmetric(
                                        horizontal: Get.width * 0.1)
                                    : EdgeInsets.only(
                                        left:
                                            index == 2 ? Get.width * 0.15 : 0),
                                child: Image.asset(
                                  onBoardData[index].imgUrl,
                                  width: index == 0
                                      ? imageWidth! * 0.8
                                      : imageWidth,
                                  height: imageHeight,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.amber,
                          alignment: Alignment.topCenter,
                          margin: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            // top: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: Text(
                            onBoardData[index].title,
                            textAlign: TextAlign.center,
                            style: titleStyles ??
                                const TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              // top: Get.height * 0.07,
                            ),
                            child: Text(
                              onBoardData[index].description,
                              textAlign: TextAlign.center,
                              style: descriptionStyles ??
                                  const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: Get.height * 0.03),
            height: 30,
            child: PageIndicator(
              count: onBoardData.length,
              activePage: onBoardState.page,
              pageIndicatorStyle: pageIndicatorStyle,
            ),
          ),
          Container(
            height: footerContentHeight,
            width: screenSize.width,
            alignment: Alignment.center,
            child: ButtonTheme(
              minWidth: 230,
              height: 40,
              child: nextButton != null
                  ? nextButton!
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 0,
                      ),
                      onPressed: () => _onNextTap(onBoardState),
                      child: Text(
                        onBoardState.isLastPage ? "Done" : "Next",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void _onNextTap(OnBoardState state) {
    if (!state.isLastPage) {
      pageController.animateToPage(
        state.page + 1,
        duration: duration,
        curve: curve,
      );
    } else {
      if (onDone == null) {
        throw Exception(
            'Either provide "onDone" callback or add "nextButton" Widget to "OnBoard" Widget to handle done state');
      } else {
        onDone!();
      }
    }
  }

  void _onSkipPressed(VoidCallback? onSkip) {
    if (onSkip == null) {
      throw Exception(
          'Either provide "onSkip" callback or add "skipButton" Widget to "OnBoard" Widget to handle skip state');
    } else {
      onSkip();
    }
  }
}
