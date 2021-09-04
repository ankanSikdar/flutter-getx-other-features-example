import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:other_features/controllers/sumController.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SumController sumController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Obx(
            () => Text('Count 1 ${sumController.count1.value}'),
          ),
          Obx(
            () => Text('Count 2 ${sumController.count2.value}'),
          ),
          Obx(
            () => Text('Sum ${sumController.sum}'),
          ),
          ElevatedButton(
            onPressed: () {
              sumController.increment1();
            },
            child: Text('Increase 1'),
          ),
          ElevatedButton(
            onPressed: () {
              sumController.increment2();
            },
            child: Text('Increase 2'),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/third');
              },
              child: Text('Go To Third Screen'))
        ],
      ),
    );
  }
}
