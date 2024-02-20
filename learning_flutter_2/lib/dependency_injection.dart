import 'package:get/get.dart';
import 'package:learning_flutter_2/controller/network_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put(NetworkController(), permanent: true);
  }
}
