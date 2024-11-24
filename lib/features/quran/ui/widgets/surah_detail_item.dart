import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theming/colors.dart';

class SurahDetailsItem extends StatelessWidget {
  const SurahDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage("assets/images/Star 1.png"),
                radius: 22.r,
                child: Text(
                  '1', // Example number
                  style: GoogleFonts.amiri(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 25.sp,
                  color: AppColors.textColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 30.sp,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              'اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ', // Example Ayah
              style: GoogleFonts.amiri(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
