import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/getx_service/service_view.dart';

class ServiceExample extends StatelessWidget {
  ServiceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Example(),
    );
  }
}
