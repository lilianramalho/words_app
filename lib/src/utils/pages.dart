import 'package:flutter/material.dart';
import 'package:words_app/src/view/screen/favorite/favorite_screen.dart';
import 'package:words_app/src/view/screen/history/history_screen.dart';
import 'package:words_app/src/view/screen/word/word_screen.dart';

final List<Widget> pages = [
 const WordScreen(),
 const HistoryScreen(),
 const FavoriteScreen(),
];
