import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/getx_connect/user_controller.dart';
import 'package:getx_playground/getx_connect/widget/user_profile.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            const Text(
              'Human Resources',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: controller.obx(
                (data) => ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: data!.length,
                  itemBuilder: (context, index) =>
                      UserProfile(user: data[index]),
                ),
                onLoading: const Center(child: CircularProgressIndicator()),
                onError: (error) => Text('Error: $error'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
