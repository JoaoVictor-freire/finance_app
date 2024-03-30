import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class FirstButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  final BorderRadius _borderRadius =
      const BorderRadius.all(Radius.circular(28.0));

  const FirstButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Ink(
          height: 60.0,
          width: 284.0,
          decoration: BoxDecoration(
              borderRadius: _borderRadius,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: onPressed != null
                      ? AppColors.greenGradient
                      : AppColors.greyGradient)),
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.buttonOnbording
                  .copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
