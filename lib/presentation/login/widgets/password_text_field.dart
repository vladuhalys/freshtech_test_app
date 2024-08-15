import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/extensions.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/resources.dart';
import '../../widgets/app_text_field.dart';


class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key,
      required this.onChanged,
      this.initialValue,
      this.errorText,
      required this.showError, required this.labelText,
      });
  final void Function(String?) onChanged;
  final String? initialValue;
  final String? errorText;
  final bool showError;
  final String labelText;

  @override
  State<PasswordTextField> createState() =>
      _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;
  late FocusNode focusNode;
  Color iconColor = AppColors.labelColor;

  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        iconColor = getColorByFocus(focusNode.hasFocus,
            widget.showError && widget.errorText.isNotNullOrEmptyTrim);
      });
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PasswordTextField oldWidget) {
    setState(() {
      iconColor = getColorByFocus(focusNode.hasFocus,
          widget.showError && widget.errorText.isNotNullOrEmptyTrim);
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppPrimaryTextField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      focusNode: focusNode,
      labelText: widget.labelText,
      keyboardType: TextInputType.visiblePassword,
      showError: widget.showError,
      errorText: widget.errorText,
      obscureText: obscureText,
      suffixIcon: IconButton(
        icon: SvgPicture.asset(
          obscureText ? AppIcons.eyeClose : AppIcons.eyeOpen,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            iconColor,
            BlendMode.srcIn,
          ),
        ),
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        color: AppColors.labelColor,
      ),
    );
  }
}

Color getColorByFocus(bool hasFocus, bool hasError) {
  Color result;
  if (hasFocus) {
    if (hasError) {
      result = AppColors.primaryTextColor; //AppColors.warningBase;
    } else {
      result = AppColors.primaryTextColor;
    }
  } else {
    result = AppColors.labelColor;
  }
  return result;
}
