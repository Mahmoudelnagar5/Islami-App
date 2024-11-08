import 'package:flutter/material.dart';

class QuranHomeScreen extends StatelessWidget {
  static const String routeName = '/quran_home';
  const QuranHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Quran Home Screen'),
      ),
    );
  }
}
