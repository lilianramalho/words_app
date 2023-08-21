import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:words_app/src/model/word/word.dart';
import 'package:words_app/src/provider/repository/repository.dart';

class WordsController extends GetxController {
  RxList<Word> words = <Word>[].obs;
  RxBool isLoarding = false.obs;

  @override
  onInit() async {
    super.onInit();
  }

  @override
  onReady() async {
    await getListWord();
  }

  getListWord() async {
    isLoarding.value = true;
    List<dynamic> result = await getListWordRepo();
    words.value = result
        .map<Word>((json) {
          return Word.fromJson(json);
        })
        .cast<Word>()
        .toList();
    isLoarding.value = true;
  }

}
