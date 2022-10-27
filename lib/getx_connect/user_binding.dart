import 'package:get/get.dart';
import 'package:getx_playground/getx_connect/user_controller.dart';
import 'package:getx_playground/getx_connect/user_provider.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProvider());
    Get.lazyPut(() => UserController(userProvider: Get.find()));
  }
}
