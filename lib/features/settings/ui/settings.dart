import 'package:flutter/material.dart';

import '../../../core/widgets/grdient_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GrdientContainer(
        child: Center(
          child: Text('Settings Screen'),
        ),
      ),
    );
  }
}
