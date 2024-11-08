import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theming/app_themes.dart';
import 'core/theming/constants.dart';
import 'features/audio/ui/audio.dart';
import 'features/home/ui/screens/home.dart';
import 'features/quran/ui/screens/quran_home.dart';
import 'features/settings/ui/settings.dart';
import 'features/splash/ui/splash.dart';
import 'islam_app.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          const Size(AppConstants.screenWidth, AppConstants.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Islam App',
          themeMode: ThemeMode.system,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          home: child,
          routes: {
            SplashScreen.routeName: (context) => const SplashScreen(),
            IslamAppMainScreen.routeName: (context) =>
                const IslamAppMainScreen(),
            HomeScreen.routeName: (context) => const HomeScreen(),
            AudioScreen.routeName: (context) => const AudioScreen(),
            SettingsScreen.routeName: (context) => const SettingsScreen(),
            QuranHomeScreen.routeName: (context) => const QuranHomeScreen(),
          },
        );
      },
      child: const SplashScreen(),
    );
  }
}
