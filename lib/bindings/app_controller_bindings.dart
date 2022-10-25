import 'package:get/get.dart';
import 'package:image_picker_android/controllers/app_controller.dart';

class AppControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
  }
}
