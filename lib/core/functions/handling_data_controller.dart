
// ignore_for_file: avoid_print

import 'package:delivery_app/core/class/status_request.dart';

handlingDataController(response) {
  if (response is StatusRequest) {
    print("handlingDataController");
    print(response);
    return response;
  } else {
    return StatusRequest
    .success;
  }
}
