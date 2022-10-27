import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/navigation/next_screen.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      getPages: [
        GetPage(name: '/', page: () => const Nav()),
        GetPage(name: '/next', page: () => const NextScreen()),
      ],
      // If you want to listen Get events to trigger actions,
      // you can to use routingCallback to it
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint('Open Ads');
        }
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // To navigate to a new screen
                  var data = await Get.to(
                    // Using a widget function instead of a widget
                    // fully guarantees that the widget and its controllers
                    // will be removed from memory when they are no longer used.
                    () => const NextScreen(),
                    // transition: Transition.rightToLeft,
                    // duration: const Duration(seconds: 1),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.to()',
                  );

                  debugPrint(data);
                },
                child: const Text('Get.to(NextScreen())'),
              ),
              ElevatedButton(
                onPressed: () {
                  // To go to the next screen and no option to go back to
                  // the previous screen (for use in SplashScreens, login
                  // screens and etc.)
                  Get.off(
                    const NextScreen(),
                    arguments: 'Hello World from Get.off()',
                  );
                },
                child: const Text('Get.off(NextScreen())'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/next',
                    arguments: 'Hello World from Get.toNamed("/next")',
                  );
                },
                child: const Text('Get.toNamed("/next")'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(
                    '/next',
                    arguments: 'Hello World from Get.offNamed("/next")',
                  );
                },
                child: const Text('Get.offNamed("/next")'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
