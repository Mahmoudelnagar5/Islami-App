import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theming/colors.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 120.h,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: const Color(0xff003A44),
              borderRadius: BorderRadius.circular(15),
            ),
            child: CircleAvatar(
              radius: 40.r,
              backgroundColor: AppColors.lightGrey,
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
                height: 50.h,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.amiri(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
