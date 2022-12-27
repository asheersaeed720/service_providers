import 'package:get/get.dart';
import 'package:service_providers/presentation/light_set_your_fingerprint_screen/binding/light_set_your_fingerprint_binding.dart';
import 'package:service_providers/presentation/light_set_your_fingerprint_screen/light_set_your_fingerprint_screen.dart';

class AppRoutes {
  static const String lightSetYourFingerprintScreen = '/light_set_your_fingerprint_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: lightSetYourFingerprintScreen,
      page: () => LightSetYourFingerprintScreen(),
      bindings: [
        LightSetYourFingerprintBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LightSetYourFingerprintScreen(),
      bindings: [
        LightSetYourFingerprintBinding(),
      ],
    )
  ];
}
