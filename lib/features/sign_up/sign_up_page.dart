// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_style.dart';
import 'package:finance_app/common/widgets/first_buttom.dart';
import 'package:finance_app/common/widgets/text_list_buttom.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            textAlign: TextAlign.center,
            'Start Saving',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenTop),
          ),
          Text(
            textAlign: TextAlign.center,
            'Your Money!',
            style: AppTextStyles.medium.copyWith(color: AppColors.greenTop),
          ),
          Image.asset('assets/images/sign_up.png'),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Your Name",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 8.0,
            ),
            child: FirstButtom(
              text: 'Sign Up',
              onPressed: () => log('entrei'),
            ),
          ),
          TextListButtom(
            width: 200.0,
            onPressed: () => log('funciona mizera'),
            childrenText: [
              Text('Already Have Account? ',
                  style: AppTextStyles.descryption
                      .copyWith(color: AppColors.grey)),
              Text('Sig In',
                  style: AppTextStyles.descryption
                      .copyWith(color: AppColors.greenBottom)),
            ],
          ),
        ],
      ),
    );
  }
}
