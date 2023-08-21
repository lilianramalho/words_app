import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:words_app/src/provider/data/words.dart';
import 'package:words_app/src/view/screen/favorite/favorite_screen.dart';
import 'package:words_app/src/view/screen/home/home_screen.dart';
import 'package:words_app/src/view/screen/word/word_screen.dart';
import 'package:words_app/src/view/screen/word/word_screen_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer( 
  builder: (context, orientation, screenType) {
    return  GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/word_screen', page: () => const WordScreen()),
        GetPage(name: '/favorite_screen', page:() => const FavoriteScreen()),
        GetPage(name: '/word_screen_details', page: () => const WordScreenDetails()),
      ],
      home: const HomeScreen(),
    );
  });
  }
}


