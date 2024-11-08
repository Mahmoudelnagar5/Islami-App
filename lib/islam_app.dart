import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import 'core/theming/colors.dart';
import 'features/home/ui/home.dart';
import 'features/quran/ui/quran_home.dart';
import 'features/settings/ui/settings.dart';

class IslamAppMainScreen extends StatefulWidget {
  static const String routeName = '/islam_app_main_screen';
  const IslamAppMainScreen({super.key});

  @override
  State<IslamAppMainScreen> createState() => _IslamAppMainScreenState();
}

class _IslamAppMainScreenState extends State<IslamAppMainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const QuranHomeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGrey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 20,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentIndex == 1
                    ? FlutterIslamicIcons.solidQuran2
                    : FlutterIslamicIcons.quran2,
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentIndex == 2 ? Icons.settings : Icons.settings_outlined,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
