import 'package:dalel/core/funcations/navigate.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:dalel/core/widgets/custom_main_btn.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/funcations/on_boarding.dart';
import 'package:flutter/material.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView(
      {super.key, required this.controller, required this.currentPage});
  final PageController controller;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return currentPage == onBoardingModel.length - 1
        ? Column(
            children: [
              CustomMainBtn(
                  text: AppStrings.createAccount,
                  onPressed: () {
                    onBoardingFunc();
                    customReplaceNavigate(context, '/SignUp');
                  }),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                  onPressed: () {
                    onBoardingFunc();
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
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
          );
  }
}
