import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theming/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: AppColors.textColor,
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Al-Fatihah',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                ),
                Text(
                  'MECCAN -  7 AYAT',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA4A3A6),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                size: 30.sp,
                Icons.bookmark,
                color: AppColors.textColor,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
