import 'package:dio/dio.dart';
import 'package:wanandroid_flutter/config/network/http_exception.dart';
import 'package:wanandroid_flutter/config/network/http_result.dart';
import 'package:wanandroid_flutter/config/network/http_transformer.dart';
import 'package:wanandroid_flutter/config/wanconfig/wan_http_status.dart';

class WanHttpTransformer extends HttpTransformer {
  final wanCode = "errorCode";
  final wanMsg = "errorMsg";
  final wanData = "data";

  WanHttpTransformer._internal();

  static final WanHttpTransformer _instance = WanHttpTransformer._internal();

  factory WanHttpTransformer.getInstance() => _instance;

  @override
  HttpResult parse(Response<dynamic> response) {
    if (response.data is! Map) return HttpResult.failureFromError();
    final code = response.data[wanCode];
    if (code == WanHttpStatus.success) {
      return HttpResult.success(response.data[wanData]);
    }
    final msg = response.data[wanMsg] ?? "";
    if (code == WanHttpStatus.needAuth) {
      return HttpResult.failureFromError(
          WanNeedAuthException(message: msg, code: code));
    }
    return HttpResult.failure(errorMsg: msg, errorCode: code);
  }
}

class WanNeedAuthException extends UnauthorisedException {
  const WanNeedAuthException({String? message, int? code})
      : super(message: message, code: code);
}
