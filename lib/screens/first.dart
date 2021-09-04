import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: Text('Go To Second'))
        ],
      ),
    );
  }
}
