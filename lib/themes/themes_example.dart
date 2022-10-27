import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/themes/themes.dart';
import 'package:getx_playground/themes/themes_controller.dart';
import 'package:getx_playground/themes/themes_view.dart';

class ThemeExample extends StatelessWidget {
  ThemeExample({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // change themeMode instead of Theme
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: Example(),
    );
  }
}
