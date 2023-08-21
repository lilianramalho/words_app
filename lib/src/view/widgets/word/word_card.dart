import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:words_app/src/model/word/word.dart';
import 'package:words_app/src/provider/data/words.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.title, required this.word});

  final String title;
  final Word word;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Get.toNamed('/word_screen_details', arguments: word);
      },
      child:  Card(
          child: Center(
            child:  Text(word.word),
          ),
      ),
    );
  }
}