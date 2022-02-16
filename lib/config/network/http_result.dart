import 'package:wanandroid_flutter/config/network/http_exception.dart';

typedef HttpResultConvert<T> = T? Function(dynamic data);

class HttpResult<T> {
  late bool ok;
  T? data;
  HttpException? error;

  HttpResult._internal({this.ok = false});

  HttpResult.success(this.data) {
    ok = true;
  }

  HttpResult.failure({String? errorMsg, int? errorCode}) {
    error = BadRequestException(message: errorMsg, code: errorCode);
    ok = false;
  }

  HttpResult.failureFromError([HttpException? error]) {
    this.error = error ?? const UnknownException();
    ok = false;
  }

  HttpResult<M> convert<M>(HttpResultConvert<M> convert) {
    if (ok) {
      return HttpResult<M>.success(convert(data));
    } else {
      return HttpResult.failureFromError(error);
    }
  }

  @override
  String toString() {
    return "{ ok:$ok,data:$data,error:$error}";
  }
}
