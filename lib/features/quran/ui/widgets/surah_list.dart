import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/quran_model.dart';
import 'custom_container.dart';

class SurahsList extends StatefulWidget {
  const SurahsList({super.key, required this.surahs});
  final List<QuranModel> surahs;

  @override
  State<SurahsList> createState() => _SurahsListState();
}

class _SurahsListState extends State<SurahsList> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    int isSelected = args[1] as int;
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 114,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: InkWell(
            onTap: () {
              setState(() {
                args[1] = index;
              });
            },
            child: CustomContainer(
              quranModel: widget.surahs[index],
              isSelected: index == isSelected,
            ),
          ),
        ),
      ),
    );
  }
}
