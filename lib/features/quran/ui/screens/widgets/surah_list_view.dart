import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/constants.dart';
import 'surah_item.dart';

class SurahListView extends StatelessWidget {
  const SurahListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppConstants.defaultPadding,
          horizontal: AppConstants.defaultPadding,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppConstants.defaultPadding,
            ),
            child: SurahItem(),
          ),
          separatorBuilder: (context, index) => const Divider(
            color: AppColors.lightGrey,
            thickness: 2,
          ),
          itemCount: 114,
        ),
      ),
    );
  }
}
