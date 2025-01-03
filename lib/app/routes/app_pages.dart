import 'package:get/get.dart';
import 'package:myapp/app/modules/product/views/cart_view.dart';
import 'package:myapp/app/modules/product/views/check_out_view.dart';
import 'package:myapp/app/modules/product/views/product_detail_view.dart';
import 'package:myapp/app/modules/product/views/product_view.dart';
import 'package:myapp/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.PRODUCT, page:()=> ProductView()),
    GetPage(name: Routes.PRODUCT_DETAILS, page:()=> ProductDetailsView()),
GetPage(name: Routes.CART, page: ()=>CartView()),
GetPage(name:Routes.CHECK_OUT, page:()=> CheckOutView())
  ];
}
