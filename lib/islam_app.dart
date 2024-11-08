import 'package:flutter/material.dart';

import 'core/theming/colors.dart';
import 'features/audio/ui/audio.dart';
import 'features/home/ui/screens/home.dart';
import 'features/settings/ui/settings.dart';

class IslamAppMainScreen extends StatefulWidget {
  static const String routeName = 'islam_app_main_screen';
  const IslamAppMainScreen({super.key});

  @override
  State<IslamAppMainScreen> createState() => _IslamAppMainScreenState();
}

class _IslamAppMainScreenState extends State<IslamAppMainScreen> {
  int currentIndex = 2;

  final List<Widget> screens = [
    const SettingsScreen(),
    const AudioScreen(),
    const HomeScreen(),
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
                currentIndex == 0 ? Icons.settings : Icons.settings_outlined,
              ),
              label: 'الإعدادات ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentIndex == 1
                    ? Icons.audiotrack
                    : Icons.audiotrack_outlined,
              ),
              label: 'صوتيات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentIndex == 2 ? Icons.home_filled : Icons.home_outlined,
              ),
              label: 'الرئسيه',
            ),
          ],
        ),
      ),
    );
  }
}
