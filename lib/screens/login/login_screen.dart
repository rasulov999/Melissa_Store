import 'package:flutter/material.dart';
import 'package:melissa_store/utils/colors.dart';
import 'package:melissa_store/utils/styles.dart';
import 'package:melissa_store/widgets/global_elevated_button.dart';
import 'package:melissa_store/widgets/textformfield_with_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Melissa-store",
          style: AppTextStyles.style24W500.copyWith(color: AppColors.blue500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Text(
              "Tizimga kirish",
              style: AppTextStyles.style24W500.copyWith(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 32),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur",
                style: AppTextStyles.style14W400
                    .copyWith(color: AppColors.gray700),
              ),
            ),
            const TextFormFieldWithTitle(
              title: "Log in",
              hinText: "Loginingizni kiriting",
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: TextFormFieldWithTitle(
                title: "Parol",
                hinText: "Parolingizni kiriting",
              ),
            ),
            GlobalElevatedButton(onTap: () {}, buttonText: "Kirish")
          ],
        ),
      ),
    );
  }
}
