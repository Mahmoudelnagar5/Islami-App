import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.fontSize,
    required this.text,
    this.alignment,
  });
  final double? fontSize;
  final String text;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 20.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
