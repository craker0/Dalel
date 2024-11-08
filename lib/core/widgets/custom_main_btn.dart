import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomMainBtn extends StatelessWidget {
  const CustomMainBtn({
    super.key,
    required this.text,
  required  this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: onPressed,
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
