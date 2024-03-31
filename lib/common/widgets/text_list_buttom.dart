import 'package:flutter/material.dart';

class TextListButtom extends StatelessWidget {
  final List<Text> childrenText;
  final VoidCallback onPressed;
  final double? width;

  const TextListButtom({
    super.key,
    required this.childrenText,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: childrenText,
      ),
    );
  }
}
