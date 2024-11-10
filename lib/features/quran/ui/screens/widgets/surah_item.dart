import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theming/colors.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset('assets/images/Star 1.png'),
            SizedBox(
              height: 32.h,
              width: 32.w,
              child: Center(
                child: Text(
                  '1',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Al-Fatihah',
              style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  'Makkah - ',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA4A3A6),
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '7 Ayat',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA4A3A6),
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        const Text(
          'الفاتحة',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
