import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    super.key, required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: 3,
        effect: ExpandingDotsEffect(
          dotColor: AppColors.primaryColor,
          activeDotColor: AppColors.deepBrown,
          dotHeight: 7,
          dotWidth: 10
        ), // your preferred effect
        onDotClicked: (index) {});
  }
}
