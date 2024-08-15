import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(AppColors.primaryColor.withOpacity(0.1)),
      ),
      child: Text(text, style: AppTextStyle.button_1),
    );
  }
}