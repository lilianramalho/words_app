import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:words_app/src/controller/geral/bottom_nav_controller.dart';
import 'package:words_app/src/utils/pages.dart';
import 'package:words_app/src/view/widgets/geral/custom_bottom_navigation_bar.dart';
import 'package:words_app/src/view/widgets/word/word_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController _controller = Get.put(BottomNavController());

    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Obx(() => pages[_controller.currentIndex.value]));
  }
}
