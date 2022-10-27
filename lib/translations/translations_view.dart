import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/translations/translations_controller.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  final messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Internationalization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'logged_in'.trParams(
                {'name': 'Faisal', 'email': 'faisal@youtb.com'},
              ),
              style: const TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('en', 'US'),
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('es', 'ES'),
              child: const Text('Spanish'),
            )
          ],
        ),
      ),
    );
  }
}
