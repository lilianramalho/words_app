import 'package:words_app/src/provider/data/words.dart';

Future<List<dynamic>> getListWordRepo() async {
  List<dynamic> map = await getWords();
  return map;
}