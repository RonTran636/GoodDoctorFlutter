import 'package:dio/dio.dart';

String diorErrorToString(DioError error) {
  final response = error.response.toString();
  return response.isNotEmpty ? response : error.error.toString();
}
