import 'package:delivery_app/core/constant/routes_name.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices 
  myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.mySharedPreferences.get("NoForTheFirstTime") == "1") {
      return const RouteSettings(name: AppNameRoutes
      .login);
    }
    return null;
  }
}
