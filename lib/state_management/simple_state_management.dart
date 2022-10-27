import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/state_management/simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // On your Stateless/Stateful class, use GetBuilder to update Text when increment be called
              GetBuilder<Controller>(
                init: Controller(),
                // INIT IT ONLY THE FIRST TIME
                builder: (controller) => Text(
                  '${controller.counter}',
                  // '${Controller.to.counter}',
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              GetX<Controller>(
                builder: (controller) => Text(controller.name.value),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Controller.to.increment(),
        ),
      ),
    );
  }
}
