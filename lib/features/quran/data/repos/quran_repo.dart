import 'package:dartz/dartz.dart';

import '../../../../core/utils/error/failures.dart';
import '../models/quran_model.dart';

abstract class QuranRepo {
  Future<Either<Failure, List<QuranModel>>> getSurahs();
}
