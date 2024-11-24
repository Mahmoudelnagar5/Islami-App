import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import 'package:islami_app/core/utils/error/failures.dart';

import 'package:islami_app/features/quran/data/models/quran_model.dart';

import '../../../../core/utils/api_services.dart';
import '../models/surah_details_model.dart';
import 'quran_repo.dart';

class QuranRepoImpl implements QuranRepo {
  @override
  Future<Either<Failure, List<QuranModel>>> getSurahs() async {
    try {
      String data = await rootBundle.loadString("assets/data/surahs.json");
      List<dynamic> list = await json.decode(data);
      return Right(list.map((e) => QuranModel.fromJson(e)).toList());
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, SurahDetailsModel>> getSurahDetails(int id) async {
    try {
      var data = await ApiServices().getSurahDetails(id);
      return Right(SurahDetailsModel.fromJson(data['data']['ayahs']));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
