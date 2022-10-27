import 'package:get/get.dart';
import 'package:getx_playground/getx_connect/user_provider.dart';
import 'package:getx_playground/getx_connect/user_model.dart';

class UserController extends GetxController with StateMixin<List<UserModel>> {
  final UserProvider userProvider;
  UserController({required this.userProvider, cityProvider});

  @override
  void onInit() {
    super.onInit();
    fetchAllUsers();
  }

  void fetchAllUsers() {
    userProvider.getUsers().then((result) {
      List<UserModel>? data = result.body;
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
