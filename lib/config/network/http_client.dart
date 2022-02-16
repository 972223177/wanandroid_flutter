import 'package:dio/dio.dart';
import 'package:wanandroid_flutter/config/network/app_dio.dart';
import 'package:wanandroid_flutter/config/network/http_config.dart';
import 'package:wanandroid_flutter/config/network/http_handler.dart';
import 'package:wanandroid_flutter/config/network/http_result.dart';
import 'package:wanandroid_flutter/config/network/http_transformer.dart';

class HttpClient {
  late final AppDio _dio;
  final HttpHandler _handler;

  HttpClient(
    HttpHandler handler,
    BaseOptions options, {
    HttpConfig? config,
  })  : _dio = AppDio(options, config: config),
        _handler = handler;

  Future<HttpResult> get(String uri,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress,
      HttpTransformer? httpTransformer}) async {
    try {
      final response = await _dio.get(uri,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      return _handler.handleResponse(response,
          httpTransformer: httpTransformer);
    } on Exception catch (e) {
      return _handler.handleException(e);
    }
  }

  Future<HttpResult> post(String uri,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      HttpTransformer? httpTransformer}) async {
    try {
      final response = await _dio.post(uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return _handler.handleResponse(response,
          httpTransformer: httpTransformer);
    } on Exception catch (e) {
      return _handler.handleException(e);
    }
  }

  Future<HttpResult> patch(String uri,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      HttpTransformer? httpTransformer}) async {
    try {
      final response = await _dio.patch(uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return _handler.handleResponse(response,
          httpTransformer: httpTransformer);
    } on Exception catch (e) {
      return _handler.handleException(e);
    }
  }

  Future<HttpResult> delete(String uri,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      HttpTransformer? httpTransformer}) async {
    try {
      final response = await _dio.delete(uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
      return _handler.handleResponse(response,
          httpTransformer: httpTransformer);
    } on Exception catch (e) {
      return _handler.handleException(e);
    }
  }

  Future<HttpResult> put(String uri,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      HttpTransformer? httpTransformer}) async {
    try {
      final response = await _dio.put(uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
      return _handler.handleResponse(response,
          httpTransformer: httpTransformer);
    } on Exception catch (e) {
      return _handler.handleException(e);
    }
  }

  Future<Response> download(String urlPath, savePath,
      {ProgressCallback? onReceiveProgress,
      Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      bool deleteOnError = true,
      String lengthHeader = Headers.contentLengthHeader,
      dynamic data,
      Options? options,
      HttpTransformer? httpTransformer}) async {
    final response = await _dio.download(urlPath, savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        deleteOnError: deleteOnError,
        lengthHeader: lengthHeader,
        data: data,
        options: options);
    return response;
  }
}
