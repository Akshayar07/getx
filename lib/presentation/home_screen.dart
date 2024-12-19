import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/presentation/second_screen.dart';
import 'package:myapp/presentation/service_sec.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                '${mainController.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            FilledButton(
                onPressed: () {
                  //Navigation to second screen
                  Get.to(const SecondScreen());
                },
                child: const Text("Next"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mainController.increment();
          Get.snackbar("${mainController.counter}", "Akshaya");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
