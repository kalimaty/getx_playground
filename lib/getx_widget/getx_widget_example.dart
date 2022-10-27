import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_playground/getx_widget/cart/cart_controller.dart';
import 'package:getx_playground/getx_widget/cart/cart_view.dart';
import 'package:getx_playground/getx_widget/cart/item/item_controller.dart';

class WidgetExample extends StatelessWidget {
  const WidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartView(),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => CartController());
        Get.create(() => ItemController());
      }),
    );
  }
}
