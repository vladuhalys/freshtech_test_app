import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    this.h,
    this.w,
  });
  final double? h;
  final double? w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h ?? 0,
      width: w ?? 0,
    );
  }
}