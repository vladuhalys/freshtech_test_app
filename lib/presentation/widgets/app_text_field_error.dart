import 'package:flutter/material.dart';

import '../../theme/app_text_style.dart';


class AppTextFieldError extends StatefulWidget {
  const AppTextFieldError({super.key, this.errorText});

  final String? errorText;

  @override
  State<AppTextFieldError> createState() => _AppTextFieldErrorState();
}

class _AppTextFieldErrorState extends State<AppTextFieldError> {
  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: true,
      widget.errorText ?? '',
      style: AppTextStyle.errorText,
    );
  }
}