import 'package:flutter/material.dart';
import 'package:melissa_store/utils/colors.dart';
import 'package:melissa_store/utils/styles.dart';

class GlobalElevatedButton extends StatelessWidget {
  const GlobalElevatedButton({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.isCancel = false,
    this.height = 44,
    this.width = double.maxFinite,
  });
  final VoidCallback onTap;
  final bool isCancel;
  final String buttonText;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: isCancel ? AppColors.white : AppColors.blue500,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: Text(buttonText, style: AppTextStyles.style16W500.copyWith(color: AppColors.white),)),
    );
  }
}
