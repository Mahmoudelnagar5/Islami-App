import 'package:animate_do/animate_do.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/features/quran/data/models/quran_model.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/grdient_container.dart';
import '../../data/models/recitation.dart';
import '../controller/recitation_cubit/recitation_cubit.dart';
import '../controller/recitation_cubit/recitation_state.dart';
import '../widgets/recitation_list_view.dart';

class AudioScreen extends StatefulWidget {
  static const String routeName = 'audio';
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  void initState() {
    BlocProvider.of<RecitationCubit>(context).getRecitations();
    super.initState();
  }

  final AudioPlayer audioPlayer = AudioPlayer();

  Duration duration = Duration.zero;

  Duration position = Duration.zero;

  bool isPlaying = false;

  bool isAudioLoaded = false;

  String? audioUrl;

  int currentSurahIndex = 0; // To track the current surah
  List<QuranModel> surahs = [];

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
        child: Column(
          children: [
            RecitationsListView(),
          ],
        ),
      ),
    );
  }
}

class SurahAudioContainer extends StatelessWidget {
  const SurahAudioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight * 0.16,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        gradient: const LinearGradient(
          colors: [
            Color(0xff9466B1),
            Color(0xff3D4DD8),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'سورة الفاتحة',
            style: GoogleFonts.amiri(
              fontSize: 28.sp,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Total Ayat : 7',
            style: GoogleFonts.amiri(
              fontSize: 28.sp,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Slider(
          //   activeColor: Colors.blue,
          //   inactiveColor: Colors.grey,
          //   min: 0.0,
          //   max: duration.inSeconds.toDouble(),
          //   value: position.inSeconds.toDouble(),
          //   onChanged: (value) async {
          //     final newPosition = Duration(seconds: value.toInt());
          //     await audioPlayer.seek(newPosition);
          //     setState(() {
          //       position = newPosition;
          //     });
          //   },
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          // Text(
          //   formatTime(position),
          //   style: GoogleFonts.amiri(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          // Text(
          //   formatTime(duration),
          //   style: GoogleFonts.amiri(
          //     color: Colors.white,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
        ],
      ),
    );
  }
}
