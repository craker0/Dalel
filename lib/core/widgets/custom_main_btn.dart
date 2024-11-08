import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomMainBtn extends StatelessWidget {
  const CustomMainBtn({super.key, required this.text,});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            text,
            style: CustomTextStyles.poppins500style18
                .copyWith(color: AppColors.offWhite),
          )),
    );
  }
}
