// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dalel/core/funcations/navigate.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:dalel/core/widgets/custom_main_btn.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/nav_bar_on_boarding.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 24,
            ),
            NavBarOnBoarding(),
            SizedBox(
              height: 32,
            ),
            OnBoardingWidgetBody(
              controller: controller,
              onPageChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            SizedBox(
              height: 88,
            ),
            currentPage == onBoardingModel.length - 1
                ? Column(
                    children: [
                      CustomMainBtn(
                          text: AppStrings.createAccount, onPressed: () {  customReplaceNavigate(context, '/SignUp');}),
                      SizedBox(
                        height: 16,
                      ),
                      TextButton(
                          onPressed: () {
                              customReplaceNavigate(context, '/SignIn');
                          },
                          child: Text(AppStrings.loginNow,
                              style: CustomTextStyles.loginNow))
                    ],
                  )
                : CustomMainBtn(
                    text: AppStrings.next,
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                    },
                  ),
            SizedBox(
              height: 17,
            ),
          ],
        ),
      )),
    );
  }
}
