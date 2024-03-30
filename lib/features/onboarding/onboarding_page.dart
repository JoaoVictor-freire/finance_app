import 'dart:developer';
import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_style.dart';
import 'package:finance_app/common/widgets/first_buttom.dart';
import 'package:finance_app/common/widgets/text_list_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 48.0,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/onboarding.png',
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            'Spend Smarter',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenBottom),
          ),
          Text(
            textAlign: TextAlign.center,
            'Save More',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenBottom),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 8.0,
            ),
            child: FirstButtom(
              text: 'Get Started',
              onPressed: () => log('entrei'),
            ),
          ),
          TextListButtom(
            width: 284.0,
            onPressed: () => log('funciona mizera'),
            childrenText: [
              Text('Already Have Account? ',
                  style: AppTextStyles.descryption
                      .copyWith(color: AppColors.grey)),
              Text('Log In',
                  style: AppTextStyles.descryption
                      .copyWith(color: AppColors.greenBottom)),
            ],
          ),
        ],
      ),
    );
  }
}
