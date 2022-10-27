import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Class name can be anything
class Controller extends GetxController {
  // // Declare the reactive variable
  // final count = 0.obs;
  // Declare the nomoral variable
  int count = 0;

  void increment() {
    // count.value++;
    count++;
    // update();
    // update(['count1']);
    update(['count1'], count < 10);
  }

  void clearCount() {
    debugPrint("clearCount been called");
    // count.value = 0;
    count = 0;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint("Controller onInit been called");

    /// Called every time `count` changes.
    // ever(count, (_) => debugPrint("$_ has been changed"));
    // everAll([count], (_) => debugPrint("$_ has been changed"));

    // /// Called only first time the variable $_ is changed
    // once(count, (_) => debugPrint("$_ was changed once"));

    // /// Called every time the user stops typing for 1000 milliseconds, for example.
    // debounce(count, (_) => debugPrint("debouce $_"),
    //     time: const Duration(milliseconds: 1000));

    // /// Ignore all changes within 1000 milliseconds.
    // interval(count, (_) => debugPrint("interval $_"),
    //     time: const Duration(milliseconds: 1000));
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Controller onReady been called");
  }

  @override
  void onClose() {
    debugPrint("Controller onClose been called");
    clearCount();
    super.onClose();
  }
}
