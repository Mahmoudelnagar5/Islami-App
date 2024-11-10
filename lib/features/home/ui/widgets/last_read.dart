import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/constants.dart';

import '../../../../core/theming/colors.dart';

class LastReadSurah extends StatelessWidget {
  const LastReadSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultPadding * 2.w,
          vertical: AppConstants.defaultPadding.h,
        ),
        margin: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultMargin,
            vertical: AppConstants.defaultMargin),
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight * 0.14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFF78C1),
              Color(0xffCA74FF),
              Color(0xff3B97ED),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/quran1.png',
              scale: .1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'آخر ما قرأت',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'سورة البقرة',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.whiteColor,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
