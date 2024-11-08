// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key, required this.controller, required this.onPageChange});
  final PageController controller ;
  final Function(int) onPageChange;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChange,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingModel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(onBoardingModel[index].pathimg),
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
                onBoardingModel[index].title,
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                onBoardingModel[index].subTitle,
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
