import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wanandroid_flutter/config/network/http_exception.dart';
import 'package:wanandroid_flutter/config/network/http_result.dart';
import 'package:wanandroid_flutter/config/network/http_transformer.dart';

class HttpHandler {
  final HttpTransformer defaultTransformer;

  HttpHandler(this.defaultTransformer);

  HttpResult handleResponse(Response? response,
      {HttpTransformer? httpTransformer}) {
    httpTransformer ??= defaultTransformer;
    if (response == null) {
      return HttpResult.failureFromError();
    }
    if (isTokenTimeout(response.statusCode)) {
      return HttpResult.failureFromError(
          UnauthorisedException(message: "没有权限", code: response.statusCode));
    }
    if (isRequestSuccess(response.statusCode)) {
      return httpTransformer.parse(response);
    } else {
      return HttpResult.failure(
          errorMsg: response.statusMessage, errorCode: response.statusCode);
    }
  }

  HttpResult handleException(Exception exception) =>
      HttpResult.failureFromError(parseException(exception));

  bool isTokenTimeout(int? code) => code == 401;

  bool isRequestSuccess(int? statusCode) =>
      (statusCode != null && statusCode >= 200 && statusCode < 300);

  HttpException parseException(Exception error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          return NetworkException(message: error.error.message);
        case DioErrorType.response:
          final int? errorCode = error.response?.statusCode;
          switch (errorCode) {
            case 400:
              return BadRequestException(message: "请求语法错误", code: errorCode);
            case 401:
              return UnauthorisedException(message: "没有权限", code: errorCode);
            case 403:
              return BadRequestException(message: "服务器拒绝执行", code: errorCode);
            case 404:
              return BadRequestException(message: "无法连接服务器", code: errorCode);
            case 405:
              return BadRequestException(message: "请求方法被禁止", code: errorCode);
            case 500:
              return BadServiceException(message: "服务器内部错误", code: errorCode);
            case 502:
              return BadServiceException(message: "无效的请求", code: errorCode);
            case 503:
              return BadServiceException(message: "服务器挂了", code: errorCode);
            case 505:
              return UnauthorisedException(
                  message: "不支持HTTP协议请求", code: errorCode);
            default:
              return UnknownException(error.error.message);
          }
        case DioErrorType.cancel:
          return CancelException(error.error.message);
        case DioErrorType.other:
          if (error.error is SocketException) {
            return NetworkException(message: error.message);
          } else {
            return UnknownException(error.message);
          }
      }
    } else {
      return UnknownException(error.toString());
    }
  }
}
