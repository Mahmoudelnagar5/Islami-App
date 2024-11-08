import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theming/colors.dart';

class LastReadSurah extends StatelessWidget {
  const LastReadSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xff3B97ED),
            Color(0xffCA74FF),
            Color(0xffFF78C1),
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
                'Last Read',
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
                'Al-Baqorah',
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/images/quran1.png',
            scale: .1,
          ),
        ],
      ),
    );
  }
}
