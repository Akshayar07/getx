import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:myapp/app/modules/product/controllers/cart_controller.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart view"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            return ListView.builder(
              itemCount: cartController.cartItem.length,
              itemBuilder: (BuildContext context, int index) {
                final item = cartController.cartItem[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(
                    item.price.toString(),
                  ),
                  trailing: IconButton(
                      onPressed: () => cartController.removeFromCart(item),
                      icon: const Icon(Icons.remove)),
                );
              },
            );
          })),
          Obx(() {
            return Text(
                'Total:\₹${cartController.totalAmount.value.toStringAsFixed(2)}');
          }),
          FilledButton(
              onPressed: () {
                Get.toNamed('/check-out');
              },
              child: Text("Check Out"))
        ],
      ),
    );
  }
}
