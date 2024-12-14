import 'package:delivery_app/core/shaerd/my_cash_helper.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static String token =
      CashHelper.getUserToken()! != "" ? CashHelper.getUserToken()! : "";
  CashHelper cashHelper = CashHelper();

  static init() {
    dio = Dio(
      BaseOptions(
      
        baseUrl: "http://192.168.229.239:8000/api/",
        receiveDataWhenStatusError: true,
      ),
    );
  }








static Future<Response> myGet({
    required String endPont,
    required myData,
  }) async {
    return await dio.get(endPont,
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }



  static Future<Response> register({
    required String name,
    required String age,
    required String password,
    required String email,
  }) async {
    return await dio.post('Register',
        data: {
          'name': name,
          'age': age,
          'password': password,
          'email': email,
        },
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return true;
            }));
  }

  static Future<Response> login(
      {required String email, required String password}) async {
    return await dio.post('Login',
        data: {'email': email, 'password': password},
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

 
  static Future<Response> myPost({
    required String endPont,
    required myData,
  }) async {
    return await dio.post(endPont,
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  static Future<Response> myDelete({
    required String endPont,
    required myData,
  }) async {
    return await dio.delete(endPont,
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }
}