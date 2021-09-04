import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  void increment1() {
    count1.value++;
  }

  void increment2() {
    count2.value++;
  }

  int get sum => count1.value + count2.value;
}
