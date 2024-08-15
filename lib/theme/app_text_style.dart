import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  static const _fontFamily1 = 'Gilroy';
  static const _fontFamily2 = 'Inter';
  
  // Text Styles with Gilroy
  static TextStyle largeTitle = const TextStyle(
    fontFamily: _fontFamily1,
    fontSize: 34,
    fontWeight: FontWeight.w600,
    height: 1.1,
    letterSpacing: -0.02,
    color: AppColors.primaryTextColor,
  );
  static TextStyle button_1 = const TextStyle(
    fontFamily: _fontFamily1,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.primaryColor,
  );
  static TextStyle headingH3 = const TextStyle(
    fontFamily: _fontFamily1,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.primaryTextColor,
  );

  // Text Styles with Inter
  static TextStyle body_1 = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.primaryTextColor,
  );

  static TextStyle primaryHintText = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.primaryHintColor,
  );

  static TextStyle errorText = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.1,
    color: AppColors.warningBase,
  );

  static TextStyle textFieldInput = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 19,
    fontWeight: FontWeight.w400,
    height: 1.2,
    color: AppColors.primaryTextColor,
  );

  static TextStyle floatingLableStyle = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.1,
    color: AppColors.labelColor,
  );

  static TextStyle tiny = const TextStyle(
    fontFamily: _fontFamily2,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );
}