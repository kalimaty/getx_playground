import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_playground/dependency_management/binding.dart';
// import 'package:getx_playground/dependency_management/class.dart';
import 'package:getx_playground/dependency_management/controller.dart';
import 'package:getx_playground/dependency_management/detail_page.dart';

class DependencyExample extends StatelessWidget {
  const DependencyExample({Key? key}) : super(key: key);

  // Singleton, one instance share with entire app
  // Controller controller = Controller();
  // final controller = Get.put(Controller());

  // // Specific the type of controller
  // final child = Get.put<Parent>(Child());
  // final parent = Get.put<Parent>(Parent());

  // final child = Get.replace<Parent>(Child());
  // final child = Get.lazyReplace<Parent>(() => Child());

  // final controller2 = Get.put(Controller());
  // final controller2 = Get.put(
  //   // it can be a class of any type
  //   Controller(),
  //   // multiple classess that are of the same type
  //   // using Get.find<Controller>() with unique id
  //   tag: 'uniqueId',
  //   // kept instance throughout the entire app
  //   // permanent: false,
  // );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: DetailsBinding(),
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          // binding: DetailsBinding(),
          binding: BindingsBuilder(
            () {
              // // lazyLoad a dependency only when is used.
              Get.lazyPut<Controller>(() => Controller());
              // // Get.lazyPut<Controller>(
              // //   // method that will be executed when your class is called for the first time
              // //   () => Controller(),
              // //   // same as Get.put()
              // //   // tag: 'uniqueId for lazyPut',
              // //   // It is similar to "permanent",
              // //   // recreate the instance from 'same place'
              // //   fenix: true,
              // // );

              // // an async method that will be executed to instantiate your class
              // Get.putAsync<AsyncTask>(
              //   () async {
              //     await Future.delayed(const Duration(seconds: 3));
              //     return AsyncTask();
              //   },
              //   // using Get.find<Controller>() with unique id
              //   // tag: 'uniqueId for putAsync',
              //   // kept instance throughout the entire app
              //   permanent: false,
              // );

              // Create new instance every time, not Singleton
              Get.create<Controller>(
                // a function that returns a class
                () => Controller(),
                // tag: 'uniqueId for create',
                permanent: true,
              );
              Get.create<Controller>(
                // a function that returns a class
                () => Controller(),
                // tag: 'uniqueId for create',
                permanent: true,
              );
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Dependency Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Reactive State Management
              // Obx(
              //   () => Text(
              //     '${controller.count.value}',
              //     style: const TextStyle(
              //       fontSize: 28,
              //     ),
              //   ),
              // ),
              // Obx(
              //   () => Text(
              //     '${controller2.count.value}',
              //     style: const TextStyle(
              //       fontSize: 28,
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/detail'),
                  // onPressed: () =>
                  //     Get.to(() => DetailPage(), binding: DetailsBinding()),
                  child: const Text('Detail Page'))
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.add),
        //   // onPressed: () => Get.find<Controller>().increment(),
        //   onPressed: () => Get.find<Controller>(tag: 'uniqueId').increment(),
        //   // onPressed: () => controller.increment(),
        // ),
      ),
    );
  }
}
