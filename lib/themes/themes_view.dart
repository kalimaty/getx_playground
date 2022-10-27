import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_playground/themes/themes.dart';
import 'package:getx_playground/themes/themes_controller.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Change  Faisal Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GetX Theme',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  // Change the theme mode to light mode
                  themeController.changeThemeMode(ThemeMode.light);
                  // // Change the theme to light theme
                  // themeController.changeTheme(Themes.lightTheme);
                  themeController.saveTheme(false);
                } else {
                  // Change the theme mode to dark mode
                  themeController.changeThemeMode(ThemeMode.dark);
                  // // Change the theme to dark theme
                  // themeController.changeTheme(Themes.darkTheme);
                  themeController.saveTheme(true);
                }
              },
              child: const Text('Change Theme'),
            )
          ],
        ),
      ),
    );
  }
}
