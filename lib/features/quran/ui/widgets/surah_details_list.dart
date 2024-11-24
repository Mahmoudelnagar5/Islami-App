import 'package:flutter/material.dart';

import 'surah_detail_item.dart';

class SurahDetailsList extends StatelessWidget {
  const SurahDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const SurahDetailsItem(),
      itemCount: 7,
      separatorBuilder: (context, index) => const Divider(
        indent: 12,
        endIndent: 12,
      ),
    );
  }
}
