import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class FirstButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const FirstButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(28.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(28.0)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: onPressed != null
                    ? AppColors.greenGradient
                    : AppColors.greyGradient)),
        child: InkWell(
          onTap: onPressed,
          child: Container(
              alignment: Alignment.center,
              height: 64.0,
              width: 364.0,
              child: Text(
                text,
                style: AppTextStyles.buttonOnbording
                    .copyWith(color: AppColors.white),
              )),
        ),
      ),
    );
  }
}
