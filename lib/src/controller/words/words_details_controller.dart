import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:words_app/src/model/word/word.dart';

class WordsDetailsController extends GetxController {
  RxList<Word> wordsFavorited = <Word>[].obs;
  late SharedPreferences sharedPreferences;
  RxBool favorited = false.obs;

  @override
  onReady() async {
    await readList();
  }

  setFavorite({required Word word, required bool isFavorited}) async {
    word = word.copyWith(favorite: isFavorited);
    if (isFavorited) {
      await readList();
      wordsFavorited.add(word);
      await saveList(book: word, favorites: wordsFavorited);
    } else {
      await readList();
      wordsFavorited.removeWhere((element) => element.word == word.word);
    }
  }

  isFavorited({required Word word}) {
    favorited.value =
        wordsFavorited.any((element) => element.word == word.word);
  }

  saveList({required List<Word> favorites, required Word book}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> jsonList =
        favorites.map((obj) => obj.toJson()).toList();
    String jsonString = jsonEncode(jsonList);
    await sharedPreferences.setString('wordFavorited', jsonString);
  }

  readList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    String? json = sharedPreferences.getString('wordFavorited');
    if (json != null) {
      List<dynamic> result = jsonDecode(json);
      wordsFavorited.value =
          result.map((value) => Word.fromJson(value)).toList();
    }
  }
}
