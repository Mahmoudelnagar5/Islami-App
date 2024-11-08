import 'package:flutter/material.dart';

import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/grdient_container.dart';

class AudioScreen extends StatelessWidget {
  static const String routeName = 'audio';
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'الصوتيات',
        ),
        isCenterTitle: true,
        allowBack: true,
      ),
      body: GrdientContainer(
        child: Center(
          child: Text('صفحة الصوتيات'),
        ),
      ),
    );
  }
}
