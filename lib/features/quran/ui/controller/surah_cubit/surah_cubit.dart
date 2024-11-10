import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/features/quran/data/repos/quran_repo.dart';

import '../../../data/models/quran_model.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  final QuranRepo quranRepo;
  SurahCubit(this.quranRepo) : super(SurahInitial());
  Future<void> getSurahs() async {
    emit(SurahLoading());
    try {
      final result = await quranRepo.getSurahs();
      result.fold(
        (failure) => emit(
          SurahError(failure.errMessage),
        ),
        (surah) => emit(
          SurahLoaded(surah),
        ),
      );
    } catch (e) {
      emit(SurahError(e.toString()));
    }
  }
}
