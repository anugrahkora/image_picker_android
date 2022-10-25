import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AppController extends GetxController {
  var isImageSelected = false.obs;
  

  void pickedImage(XFile imageFile) {

    if (!isImageSelected.value) {
      isImageSelected.update((val) {
        isImageSelected.value = true;
      });
    }
  }

  void removedImage() {
    if (isImageSelected.value) {
      isImageSelected.update((val) {
        isImageSelected.value = false;
      });
    }
  }
}
