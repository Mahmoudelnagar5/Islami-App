import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/constants.dart';

import '../../../core/theming/colors.dart';
import '../../home/ui/views/home.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/images/splash_nobg.png',
              width: ScreenUtil().screenWidth,
              height: 250.h,
              fit: BoxFit.cover,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Islam App',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding * 2),
              child: Text(
                "صديقك اليومي الذي يوفر لك أوقات الصلاة، الأذكار، تلاوة القرآن، اتجاه القبلة، والمزيد لمساعدتك في تعزيز عملك الديني بسهولة ويسر",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
