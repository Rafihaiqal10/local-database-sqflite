import 'package:tes/pages/Controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}