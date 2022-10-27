import 'package:get/get.dart';

class CartController extends GetxController {
  final total = 0.obs;
  void increment() => total.value++;
  void decrement() => total.value--;
}
