import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/product/controllers/cart_controller.dart';
import 'package:myapp/app/modules/product/views/product_view.dart';
import 'package:myapp/app/routes/app_pages.dart';
import 'package:myapp/app/routes/app_routes.dart';
// import 'package:myapp/presentation/home_screen.dart';
// import 'package:myapp/presentation/home_screen.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: Routes.PRODUCT,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductView(),
    );
  }
}
