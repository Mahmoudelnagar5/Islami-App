import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});
  static const routeName = 'sura_details_screen';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9E5FF),
        appBar: CustomAppBar(),
      ),
    );
  }
}
