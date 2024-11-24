import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/features/quran/data/models/quran_model.dart';
import '../../../../core/theming/colors.dart';
import '../widgets/basmalla_container.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/surah_details_list.dart';
import '../widgets/surah_list.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});
  static const routeName = 'sura_details_screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    final surahs = args[0] as List<QuranModel>;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE9E5FF),
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: 10.h),
            SurahsList(surahs: surahs),
            SizedBox(height: 12.h),
            const Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: BasmallaContainer(),
                    ),
                  ),
                  SurahDetailsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
