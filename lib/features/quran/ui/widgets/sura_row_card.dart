import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/constants.dart';
import '../../data/quran_model.dart';

class SuraRowCard extends StatelessWidget {
  const SuraRowCard({
    super.key,
    required this.surah,
  });

  final QuranModel surah;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: AppConstants.defaultMargin * .5,
        horizontal: AppConstants.defaultMargin * 2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppConstants.defaultRadius * 2,
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: const AssetImage("assets/images/star.png"),
            radius: 20.r,
            child: Text(
              surah.id.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          title: Text(
            surah.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'عدد الآيات: ${surah.verseCount}',
                textAlign: TextAlign.right,
              ),
              Text(
                surah.type,
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
