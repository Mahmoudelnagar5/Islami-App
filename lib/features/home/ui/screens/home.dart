import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFEAE6FF),
            Color(0xFFEAE6FF),
            AppColors.whiteColor,
            AppColors.whiteColor,
          ],
        ),
      ),
      child: const HomeScreenBody(),
    ));
  }
}
