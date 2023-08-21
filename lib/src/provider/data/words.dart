import 'package:dio/dio.dart';
import 'package:words_app/src/utils/config.dart';

Future<List<dynamic>> getWords() async {
  final dio = Dio();
  final response = await dio
      .get('https://api.datamuse.com/words?ml=ringing+in+the+ears',);
  if (response.statusCode == 200) {
    return response.data;
  }else{
    return [];
  }
}
