import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/colors.dart';

import '../../../../core/theming/constants.dart';

class PrayerContainer extends StatelessWidget {
  const PrayerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Color(0xff35F8A6),
            Color(0xff6877FF),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/qibla.png',
            fit: BoxFit.cover,
            height: 70.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'صلاه الفجر',
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
                '٤:٢٠ صباحاً',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.whiteColor,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
