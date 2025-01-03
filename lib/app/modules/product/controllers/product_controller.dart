import 'package:get/get.dart';
import 'package:myapp/app/modules/product/models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    products.addAll([
      ProductModel(name: "Product 1", price: 100.0),
      ProductModel(name: "Product 2", price: 580.0),
      ProductModel(name: "Product 3", price: 190.0),
      ProductModel(name: "Product 4", price: 120.0),
    ]);
  }
}
