import 'package:flutter/material.dart';
import 'package:melissa_store/utils/colors.dart';
import 'package:melissa_store/utils/styles.dart';

class TextFormFieldWithTitle extends StatelessWidget {
  const TextFormFieldWithTitle({
    super.key,
    required this.title,
    required this.hinText,
    this.isPassword = false,
  });
  final String title;
  final String hinText;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.style16W400.copyWith(color: AppColors.gray900),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 44,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hinText,
              hintStyle:
                  AppTextStyles.style14W400.copyWith(color: AppColors.gray400),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: AppColors.gray300)),
            ),
          ),
        )
      ],
    );
  }
}
