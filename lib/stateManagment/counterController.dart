// ignore_for_file: file_names, avoid_print

import 'package:get/get.dart';

class CounterControllr extends GetxController {
  //*******Counter Example************ */
  RxInt counter = 1.obs;
  //*******Opacity Example************ */
  RxDouble opacity = .3.obs;
  RxBool switchBtn = true.obs;
  //*******Fav List************ */
  RxList favList = ["Hira", 'Misbah', "Kamran", "Farhan"].obs;
  RxList tempFavList = [].obs;

  increament() {
    counter.value++;
    print("hira");
  }

  swichController(bool val) {
    switchBtn.value = val;
  }

  addFavItem(String valuee) {
    tempFavList.add(valuee);
  }

  removeFavItem(String valuee) {
    tempFavList.remove(valuee);
  }
}
