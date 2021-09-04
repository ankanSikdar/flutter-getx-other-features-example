import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trArgs(['Your Name'])),
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
              Get.updateLocale(Locale('en'));
            },
            child: Text('Change locale to english'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('pt'));
            },
            child: Text('Change locale to portuguese'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(Locale('pt', 'BR'));
            },
            child: Text('Change locale to brazil'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/second');
            },
            child: Text('Go To Second Page'),
          ),
        ],
      ),
    );
  }
}
