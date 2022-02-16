import 'package:dio/dio.dart';
import 'package:wanandroid_flutter/config/network/http_result.dart';

abstract class HttpTransformer {
  const HttpTransformer();

  HttpResult parse(Response response);
}

class DefaultTransformer extends HttpTransformer {
  const DefaultTransformer();

  @override
  HttpResult parse(Response<dynamic> response) {
    return HttpResult.failureFromError();
  }
}
