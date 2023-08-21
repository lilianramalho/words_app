import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:words_app/src/controller/geral/bottom_nav_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
  });

  final BottomNavController _controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
            onTap: (value) {
              _controller.changeScreen(value);
            },
            currentIndex: _controller.currentIndex.value,
            selectedItemColor: const Color.fromARGB(255, 228, 137, 168),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favorites',
              ),
            ]));
  }
}
