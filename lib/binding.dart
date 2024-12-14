import 'package:delivery_app/core/class/crud.dart';
import 'package:get/get.dart';


class MyBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => LogInImpController(), fenix: true);
    // Get.lazyPut(() => LocaleController(), fenix: true);
    // Get.lazyPut(() => SignUpImpController(), fenix: true);
    // Get.lazyPut(() => SuccessResetPasswordControllerImp(), fenix: true);
    Get.put(Crud());
    // Get.put(TestControllerImp());
  }
}

