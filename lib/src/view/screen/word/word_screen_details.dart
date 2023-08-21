import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:words_app/src/controller/words/words_details_controller.dart';
import 'package:words_app/src/model/word/word.dart';
import 'package:words_app/src/view/widgets/geral/word_button.dart';

class WordScreenDetails extends StatelessWidget {
  const WordScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Word word = Get.arguments as Word;
    final WordsDetailsController _controller =
        Get.put(WordsDetailsController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 152, 176),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    word.word,
                    style: GoogleFonts.lato(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 23),
              child: Row(
                children: [
                  Icon(
                    size: 80,
                    Icons.play_arrow_rounded,
                    color: Color.fromARGB(255, 143, 187, 222),
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 10,
                      backgroundColor: Colors.grey,
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                "Meanings",
                style:
                    GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 26),
                  child: Text(
                    "Verb - ${word.word}",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                Obx(
                  () => StarButton(
                      isStarred: _controller.favorited.value,
                      iconSize: 35,
                      iconColor: const Color.fromARGB(255, 209, 203, 144),
                      valueChanged: (value) async {
                        await _controller.setFavorite(
                            word: word, isFavorited: value);
                      }),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtom(title: 'Voltar', action: () {}),
                  CustomButtom(title: 'Próximo', action: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
