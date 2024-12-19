import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/presentation/service_sec.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    super.key,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // final mainController = Get.put(MainController());
  final MainController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text(
                  '${ctrl.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            FilledButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Prev"))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: mainController.increment,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
