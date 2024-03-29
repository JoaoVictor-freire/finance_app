import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_style.dart';
import 'package:finance_app/common/widgets/first_buttom.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset('assets/images/man.png'),
              )),
          Text(
            'Spend Smarter',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenBottom),
          ),
          Text(
            'Save More',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenBottom),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FirstButtom(
              text: 'Get Started',
              onPressed: () {},
            ),
          ),
          Text(
            'Already Have Account? Log In',
            style: AppTextStyles.descryption.copyWith(color: AppColors.grey),
          ),
          const SizedBox(
            height: 22.0,
          )
        ],
      ),
    );
  }
}
