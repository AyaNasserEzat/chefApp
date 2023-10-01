import 'package:chefapp/core/database/api/api_consumer.dart';
import 'package:chefapp/core/database/api/api_interceptors.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConcumer {
 final Dio dio;

  DioConsumer(this.dio){
    dio.options.baseUrl='';
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
  }
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      var res = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async{
         try {
      var res = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on Exception catch (e) {
      print(e.toString());
    }
      }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async{
         try {
      var res = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on Exception catch (e) {
      print(e.toString());
    }
      }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async{
         try {
      var res = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on Exception catch (e) {
      print(e.toString());
    }
      }
}
