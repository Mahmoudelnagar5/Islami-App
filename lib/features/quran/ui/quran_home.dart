import 'package:flutter/material.dart';

import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/grdient_container.dart';

class QuranHomeScreen extends StatelessWidget {
  static const String routeName = 'quran_home';
  const QuranHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'القرآن الكريم',
        ),
        isCenterTitle: true,
        allowBack: true,
      ),
      body: GrdientContainer(
        child: Center(
          child: Text('صفحة القرآن الكريم'),
        ),
      ),
    );
  }
}
