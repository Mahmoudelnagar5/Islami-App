import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/constants.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/grdient_container.dart';
import 'juzaa.dart';
import 'sajda.dart';
import 'sura.dart';

class QuranHomeScreen extends StatelessWidget {
  static const String routeName = 'quran_home';
  const QuranHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'القرآن الكريم',
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Container(
              height: 45.h,
              margin: const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultMargin * 2,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppConstants.defaultRadius * 3),
                ),
                color: AppColors.whiteColor,
              ),
              child: const TabBar(
                tabs: [
                  Text("جزء"),
                  Text("سجدة"),
                  Text("سوره"),
                ],
              ),
            ),
          ),
        ),
        body: const GrdientContainer(
          child: TabBarView(
            children: [
              JuzaaScreen(),
              SajdaScreen(),
              SuraScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
