import 'package:get/get.dart';

class UIController extends GetxController {
  final _screenIndex = 0.obs;

   set screenIndex(int index) {
    _screenIndex.value = index;
  }

  RxInt get reactiveScreenIndex => _screenIndex;

  int get screenIndex => _screenIndex.value;
}