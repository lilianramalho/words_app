import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;
  

  changeScreen(int index){
    currentIndex.value = index;
  }
}