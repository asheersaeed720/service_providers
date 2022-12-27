import '../controller/light_set_your_fingerprint_controller.dart';
import 'package:get/get.dart';

class LightSetYourFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LightSetYourFingerprintController());
  }
}
