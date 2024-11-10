import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/constants.dart';
import '../../data/quran_model.dart';
import '../widgets/sura_row_card.dart';

class SuraScreen extends StatelessWidget {
  static const routeName = 'sura';
  const SuraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<QuranModel>> loadSurahs() async {
      final String response =
          await rootBundle.loadString('assets/json/quran.json');
      final List<dynamic> data = json.decode(response);
      return data.map((json) => QuranModel.fromJson(json)).toList();
    }

    return FutureBuilder<List<QuranModel>>(
      future: loadSurahs(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('خطأ في التحميل'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('لا يوجد سور'));
        }

        final suras = snapshot.data!;
        return ListView.builder(
          itemCount: suras.length,
          itemBuilder: (context, index) {
            final surah = suras[index];
            return SuraRowCard(surah: surah);
          },
        );
      },
    );
  }
}
