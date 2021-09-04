import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  @override
  onInit() {
    super.onInit();
    GetStorage box = GetStorage();
    if (box.read('count1') != null) {
      count1.value = box.read('count1');
      count2.value = box.read('count2');
    }
  }

  void increment1() {
    count1.value++;
  }

  void increment2() {
    count2.value++;
  }

  int get sum => count1.value + count2.value;
}
