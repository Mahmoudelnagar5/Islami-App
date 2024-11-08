import 'package:flutter/material.dart';
import 'package:islami_app/features/home/data/models/feature_model.dart';
import 'package:islami_app/features/home/ui/widgets/feature_item.dart';

import 'prayer_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const PrayerContainer(),
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: FeatureModel.features.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => FeatureItem(
                image: FeatureModel.features[index].image,
                title: FeatureModel.features[index].title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
