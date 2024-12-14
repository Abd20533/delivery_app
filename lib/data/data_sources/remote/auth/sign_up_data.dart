

import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/core/constant/app_link_api.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);
  getData({required Map<String, String> data}) async {
    var response = await crud.postData(url: AppLinkApi
    .urlServer, data: data);
    return response.fold((l) => l, (r) => r);
  }
}
