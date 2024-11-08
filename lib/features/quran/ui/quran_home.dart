import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/grdient_container.dart';

class QuranHomeScreen extends StatelessWidget {
  static const String routeName = '/quran_home';
  const QuranHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Row(
          children: [
            Icon(
              FlutterIslamicIcons.solidQuran2,
              color: AppColors.darkPurple,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Al Quran',
            ),
          ],
        ),
        allowBack: true,
      ),
      body: GrdientContainer(
        child: Center(
          child: Text('Quran Home Screen'),
        ),
      ),
    );
  }
}
