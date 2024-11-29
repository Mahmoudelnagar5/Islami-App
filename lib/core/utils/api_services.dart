import 'package:dio/dio.dart';

class ApiServices {
  static const String baseUrl = 'https://api.alquran.cloud/v1/';
  Future<Map<String, dynamic>> getSurahDetails(int id) async {
    var response = await Dio().get('${baseUrl}surah/$id/ar.alafasy');
    return response.data;
  }

  Future<Map<String, dynamic>> getAllRecitations() async {
    var respone = await Dio()
        .get('https://api.quran.com/api/v4/resources/recitations?language=ar');
    // print(respone.data);
    return respone.data;
  }

  Future<Map<String, dynamic>> getSurahAudio(
      String reciterId, String chapterId) async {
    var respone = await Dio().get(
        'https://api.quran.com/api/v4/chapter_recitations/$reciterId/$chapterId');
    // print(respone.data);
    return respone.data;
  }
}
