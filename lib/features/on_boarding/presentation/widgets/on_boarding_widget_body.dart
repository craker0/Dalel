// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.imgOnBoarding1),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 24,
              ),
              OnBoardingIndicator(
                controller: controller,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Explore The history with Dalel in a smart way",
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Using our app’s history libraries you can find many historical periods",
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins300style16,
              ),
            ],
          );
        },
      ),
    );
  }
}
