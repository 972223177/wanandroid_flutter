import 'package:dio/dio.dart';

class HttpConfig {
  final String? proxy;
  final String? cookiesPath;
  final List<Interceptor> interceptors;

  HttpConfig({
    this.proxy,
    this.cookiesPath,
    this.interceptors = const <Interceptor>[],
  });
}
