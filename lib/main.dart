import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final CounterController counter = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX counter demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            ElevatedButton(
              child: const Text("Go to Next page"),
              onPressed: () => Get.to(
                NextPage(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  NextPage({super.key});

  // We can ask Get to find a Controller that is being used by another page and redirect you to it.
  final CounterController counter = Get.find<CounterController>();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter ${counter.count}"),
      ),
      body: Center(
        child: Text(
          "${counter.count}",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
