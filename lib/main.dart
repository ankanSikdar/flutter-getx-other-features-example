import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:other_features/screens/first.dart';
import 'package:other_features/screens/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set Default Transition for changing screens
      defaultTransition: Transition.leftToRightWithFade,
      initialRoute: '/first',
      getPages: [
        GetPage(name: '/first', page: () => First()),
        GetPage(name: '/second', page: () => Second()),
      ],
    );
  }
}
