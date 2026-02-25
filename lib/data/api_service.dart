import 'package:dio/dio.dart';

import '../domain/domain_name.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://fakestoreapi.com",
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
  Future<dynamic> post({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameter,
  }) async {
    try {
      Response response =
          await dio.post(endpoint, data: data, queryParameters: queryParameter);

      print(" SUCCESS [${response.statusCode}] => $endpoint");
      print("RESPONSE => ${response.data}");
      return response;
    } on DioException catch (e) {
      return _handleError(e);
    } catch (e) {
      print(" ERROR: $e");
      return null;
    }
  }

  Future<dynamic> get({
    required String endpoint,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await dio.get(endpoint, queryParameters: query);

      print(" SUCCESS [${response.statusCode}] => $endpoint");
      print("RESPONSE => ${response.data}");
      return response;
    } on DioException catch (e) {
      return _handleError(e);
    } catch (e) {
      print(" ERROR: $e");
      return null;
    }
  }

  Future<dynamic> put({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameter,
  }) async {
    try {
      Response response =
          await dio.put(endpoint, data: data, queryParameters: queryParameter);

      print(" SUCCESS [${response.statusCode}] => $endpoint");
      print("RESPONSE => ${response.data}");
      return response;
    } on DioException catch (e) {
      return _handleError(e);
    } catch (e) {
      print(" UNKNOWN ERROR: $e");
      return null;
    }
  }

  Future<dynamic> delete({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameter,
  }) async {
    try {
      Response response = await dio.delete(endpoint,
          data: data, queryParameters: queryParameter);

      print(" SUCCESS [${response.statusCode}] => $endpoint");
      print("RESPONSE => ${response.data}");
      return response;
    } on DioException catch (e) {
      return _handleError(e);
    } catch (e) {
      print(" UNKNOWN ERROR: $e");
      return null;
    }
  }

  dynamic _handleError(DioException e) {
    if (e.response != null) {
      print(" ERROR [${e.response?.statusCode}]");
      print("MESSAGE => ${e.response?.data}");
      return null;
    }

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        print(" Connection Timeout");
        break;
      case DioExceptionType.receiveTimeout:
        print(" Receive Timeout");
        break;
      case DioExceptionType.connectionError:
        print(" No Internet Connection");
        break;
      default:
        print(" Unexpected Error");
    }

    return null;
  }
}
