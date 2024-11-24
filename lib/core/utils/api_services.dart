import 'package:dio/dio.dart';

class ApiServices {
  static const String baseUrl = 'https://api.alquran.cloud/v1/';
  Future<Map<String, dynamic>> getSurahDetails(int id) async {
    var response = Dio().get('${baseUrl}surah/$id/ar.alafasy');
    return response.then((value) {
      return value.data;
    });
  }
}
