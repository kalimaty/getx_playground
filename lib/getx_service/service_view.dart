import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/getx_service/settings_service.dart';

class Example extends GetView<SettingsService> {
  const Example({Key? key}) : super(key: key);

  // final controller = Get.find<SettingsService>();
  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<SettingsService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Pressed ${controller.counter} times.',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                child: const Text('Increase'))
          ],
        ),
      ),
    );
  }
}
