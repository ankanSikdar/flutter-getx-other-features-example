import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:other_features/controllers/bindings/sumBinding.dart';
import 'package:other_features/screens/first.dart';
import 'package:other_features/screens/second.dart';
import 'package:other_features/screens/third.dart';
import 'package:other_features/utils/translations.dart';

void main() async {
  await GetStorage.init();

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
      translations: MyTranslations(),
      locale: Locale('en', 'US'),
      // Set Default Transition for changing screens
      defaultTransition: Transition.leftToRightWithFade,
      initialRoute: '/first',
      getPages: [
        GetPage(name: '/first', page: () => First()),
        GetPage(
          name: '/second',
          page: () => Second(),
          binding: SumBind(),
        ),
        GetPage(name: '/third', page: () => Third())
      ],
    );
  }
}
