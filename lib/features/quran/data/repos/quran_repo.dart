import 'package:dartz/dartz.dart';

import '../../../../core/utils/error/failures.dart';
import '../models/quran_model.dart';
import '../models/surah_details_model.dart';

abstract class QuranRepo {
  Future<Either<Failure, List<QuranModel>>> getSurahs();
  Future<Either<Failure, SurahDetailsModel>> getSurahDetails(int id);
}
