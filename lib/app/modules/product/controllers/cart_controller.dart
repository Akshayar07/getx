import 'package:get/get.dart';
import 'package:myapp/app/modules/product/models/product_model.dart';

class CartController extends GetxController {
  var cartItem = <ProductModel>[].obs;
  var totalAmount = 0.0.obs;
  void addToCart(ProductModel product) {
    cartItem.add(product);
    calculateTotal();
  }

  void removeFromCart(ProductModel product) {
    cartItem.remove(product);
    calculateTotal();
  }

  void calculateTotal() {
    totalAmount.value = cartItem.fold(0, (sum, item) => sum + item.price);
  }
}
