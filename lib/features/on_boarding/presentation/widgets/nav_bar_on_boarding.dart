import 'package:dalel/core/funcations/navigate.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class NavBarOnBoarding extends StatelessWidget {
  const NavBarOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            customReplaceNavigate(context, '/SignIn');
          },
          child: Text(
            AppStrings.skip,
            style: CustomTextStyles.poppins300style16
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ));
  }
}
