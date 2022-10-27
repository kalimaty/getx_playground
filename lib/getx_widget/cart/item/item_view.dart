import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/getx_widget/cart/cart_controller.dart';
import 'package:getx_playground/getx_widget/cart/item/item_controller.dart';
import 'package:getx_playground/getx_widget/cart/item/item_model.dart';

class ItemView extends GetWidget<ItemController> {
  final shoppingCartController = Get.find<CartController>();
  ItemView({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item.imgUrl,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Size: ${item.size}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${item.price}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    _buildButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              controller.decrement();
              if (controller.quantity.value < 0) {
                controller.reset();
              } else {
                shoppingCartController.decrement();
              }
            },
            child: const Text(
              '-',
              style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Obx(() => Text(
                '${controller.quantity}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              controller.increment();
              shoppingCartController.increment();
            },
            child: const Text(
              '+',
              style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
