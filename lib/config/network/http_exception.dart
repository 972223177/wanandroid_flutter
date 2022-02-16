class HttpException implements Exception {
  final String? _message;
  final int? _code;

  const HttpException([this._message, this._code]);

  String get message => _message ?? runtimeType.toString();

  int get code => _code ?? -1;

  @override
  String toString() {
    return "code:$code($message)";
  }
}

//客户端错误
class BadRequestException extends HttpException {
  const BadRequestException({String? message, int? code})
      : super(message, code);
}

//服务端错误
class BadServiceException extends HttpException {
  const BadServiceException({String? message, int? code})
      : super(message, code);
}

class UnknownException extends HttpException {
  const UnknownException([String? message = "未知错误"]) : super(message);
}

class CancelException extends HttpException {
  const CancelException([String? message]) : super(message);
}

class NetworkException extends HttpException {
  const NetworkException({String? message, int? code}) : super(message, code);
}

class UnauthorisedException extends HttpException {
  const UnauthorisedException({String? message, int? code})
      : super(message, code);
}

class BadResponseException extends HttpException {
  dynamic data;

  BadResponseException([this.data]) : super();
}
