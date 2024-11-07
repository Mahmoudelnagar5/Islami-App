import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class PrayerContainer extends StatelessWidget {
  const PrayerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            const Color(0xff004648).withOpacity(.7),
            BlendMode.srcOver,
          ),
          image: const AssetImage(
            'assets/images/prayer_timing.png',
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الصلاة القادمة الضهر الساعه',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 25.sp,
                        color: const Color(0xffffffff),
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  DateFormat('hh:mm a').format(DateTime.now()).toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 25.sp,
                        color: const Color(0xffffffff),
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'متبفى من الوقت 05:54:13',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 25.sp,
                        color: const Color(0xffffffff),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
