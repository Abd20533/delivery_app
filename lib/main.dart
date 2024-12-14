import 'package:delivery_app/binding.dart';
import 'package:delivery_app/core/class/crud_with_dio.dart';
import 'package:delivery_app/core/localization/change_local.dart';
import 'package:delivery_app/core/localization/translated.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:delivery_app/core/shaerd/my_cash_helper.dart';
import 'package:delivery_app/core/shaerd/shared_whit_getx.dart';
import 'package:delivery_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await CashHelper.init();
  await CashHelperWithGetX.init();

  await initializedServices();


  DioHelper.init();
  await CashHelper.init();
  CashHelper.putUser(userToken: "");
  CashHelper.putUserTheme(theme: "light");
  CashHelper.putUserLanguage(language: "en");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
        locale: localeController.language,
        translations: MyTranslated(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: localeController.appThemeMode,
        theme: localeController.appTheme,
        darkTheme: ThemeData.dark(),

        ///routes ready for GetX
        getPages: routesGetX,


        /// for controller to delete
        initialBinding: MyBinding());
  }
}
