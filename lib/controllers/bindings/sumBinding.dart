import 'package:get/get.dart';
import 'package:other_features/controllers/sumController.dart';

class SumBind extends Bindings {
  @override
  void dependencies() {
    printInfo(info: 'Binding Called');
    Get.lazyPut<SumController>(() => SumController());
  }
}
