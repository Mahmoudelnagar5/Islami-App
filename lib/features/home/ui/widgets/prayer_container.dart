import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theming/colors.dart';

class PrayerContainer extends StatelessWidget {
  const PrayerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight * 0.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xff6877FF),
            Color(0xff35F8A6),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Magrib 17:30 WIB',
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '20:30:10 Menjelang Azan',
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: AppColors.whiteColor.withOpacity(.7),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/qibla.png',
            fit: BoxFit.cover,
            height: 100.h,
          ),
        ],
      ),
    );
  }
}
