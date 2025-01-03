import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/product/controllers/cart_controller.dart';
import 'package:myapp/app/modules/product/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  ProductDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/cart');
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [
          Text(product.name),
          Text(product.price.toString()),
          ElevatedButton(
              onPressed: () {
                cartController.addToCart(product);
                Get.snackbar(
                    "Added to cart", "${product.name} added to you cart");
              },
              child: const Text("Add to Cart"))
        ],
      ),
    );
  }
}
