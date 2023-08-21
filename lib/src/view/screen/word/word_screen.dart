import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:words_app/src/controller/words/words_controller.dart';
import 'package:words_app/src/view/widgets/word/word_card.dart';

class WordScreen extends StatelessWidget {
  const WordScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final WordsController _controller = Get.put(WordsController());

    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Word List",
              style: GoogleFonts.lato(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // número de itens por linha
                ),
                itemCount: _controller.words.length,
                itemBuilder: (BuildContext context, int index) {
                  return  WordCard(title: _controller.words[index].word, word: _controller.words[index],);
                },
              ),
            )
          ],
        ),
    );
  }
}
