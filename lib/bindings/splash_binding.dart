
import 'package:get/get.dart';
import 'package:institute/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>  SplashController());
  }
}
