import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Next Screen'),
            Text('argument: ${Get.arguments}'),
            Text('parameters: ${Get.parameters['id']}'),
            ElevatedButton(
              onPressed: () {
                // To navigate to a new screen
                Get.back(
                  result: 'success',
                  // if your set [closeOverlays] to true, Get.back() will close
                  // the currently open snackbar/dialog/bottomsheet AND the current page
                  closeOverlays: false,
                );
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
