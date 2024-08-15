import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';
import 'app_text_field_error.dart';

class AppPrimaryTextField extends StatelessWidget {
  const AppPrimaryTextField({
    super.key,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.contentPadding,
    this.hintText,
    this.hintStyle,
    this.colorBorder,
    this.errorText,
    this.initialValue,
    this.onChanged,
    this.obscureText,
    this.controller,
    this.showError = true,
    this.enabled = true,
    this.isDense,
    this.width,
    this.onTap,
    this.maxLines = 1,
    this.formatters,
    this.prefixConstr,
    this.expands,
    this.minLines,
    this.textAlign,
    this.onEditingComplete,
    this.maxLength,
    this.onTapOutside,
    this.enableInteractiveSelection,
    this.inputFormatters,
    this.showCursor,
    this.isRequired,
    this.titleText,
    this.autofocus,
    this.style,
    this.cursorHeight,
    this.cursorColor,
    this.labelText,
  });

  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final EdgeInsets? contentPadding;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? colorBorder;
  final String? errorText;
  final String? initialValue;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? showCursor;
  final TextEditingController? controller;
  final bool showError;
  final bool enabled;
  final bool? isDense;
  final double? width;
  final int? maxLines;
  final List<TextInputFormatter>? formatters;
  final BoxConstraints? prefixConstr;
  final bool? expands;
  final int? minLines;
  final TextAlign? textAlign;
  final int? maxLength;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function()? onEditingComplete;
  final bool? enableInteractiveSelection;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isRequired;
  final String? titleText;
  final bool? autofocus;
  final TextStyle? style;
  final double? cursorHeight;
  final Color? cursorColor;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          
          obscuringCharacter: '•',
          cursorColor: cursorColor ?? AppColors.primaryTextColor,
          autofocus: autofocus ?? false,
          showCursor: showCursor ?? true,
          cursorHeight: cursorHeight,
          inputFormatters: inputFormatters,
          enableInteractiveSelection: enableInteractiveSelection ?? true,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          textAlign: textAlign ?? TextAlign.start,
          expands: expands ?? false,
          onTap: onTap,
          controller: controller,
          initialValue: initialValue,
          onChanged: onChanged,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onTapOutside: onTapOutside,
          keyboardType: keyboardType,
          style: style ?? AppTextStyle.textFieldInput,
          focusNode: focusNode,
          obscureText: obscureText ?? false,
          decoration:
              InputDecoration(
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryHintColor,
                    width: 1.0,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryTextColor,
                    width: 1.0,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryHintColor,
                    width: 1.0,
                  ),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.warningBase,
                    width: 1.0,
                  ),
                ),
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                hintText: hintText,
                labelText: labelText,
                suffixIcon: suffixIcon,
                
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 24,
                  minWidth: 24,
                ),
                prefixIcon: prefixIcon,
                prefixIconConstraints: prefixConstr ??
                    const BoxConstraints(
                      minHeight: 24,
                      minWidth: 24,
                    ),
                hintStyle: hintStyle ?? AppTextStyle.primaryHintText,
                labelStyle: AppTextStyle.textFieldInput.copyWith(
                  color: AppColors.primaryHintColor,
                ),
                floatingLabelStyle: AppTextStyle.floatingLableStyle,
                focusColor: AppColors.primaryTextColor,
              ),
        ),
        if (errorText != null && showError)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: AppTextFieldError(errorText: errorText),
          )
      ],
    );
  }
}
