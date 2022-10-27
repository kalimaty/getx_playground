import 'package:get/get.dart';

class ItemController extends GetxController {
  final quantity = 0.obs;
  void increment() => quantity.value++;
  void decrement() => quantity.value--;
  void reset() => quantity.value = 0;
}
