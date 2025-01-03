import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/product/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
        ),
        body: Obx(() {
          return ListView.builder(
            itemCount: productController.products.length,
            itemBuilder: (context, index) {
              final product = productController.products[index];

              return ListTile(
                title: Text(product.name),
                subtitle: Text("₹ ${product.price.toString()}"),
                onTap: () {
                  Get.toNamed('/product-details', arguments: product);
                },
              );
            },
          );
        }));
  }
}
