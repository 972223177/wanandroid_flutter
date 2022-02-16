import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:wanandroid_flutter/config/network/http_config.dart';

class AppDio with DioMixin implements Dio {
  AppDio(BaseOptions options, {HttpConfig? config}) {
    this.options = options;
    final cacheOptions = CacheOptions(store: MemCacheStore());
    interceptors.add(DioCacheInterceptor(options: cacheOptions));
    if (config?.cookiesPath?.isNotEmpty ?? false) {
      interceptors.add(CookieManager(PersistCookieJar()));
    }
    if (kDebugMode) {
      interceptors.add(LogInterceptor(
        requestBody: true,
        error: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        request: false,
      ));
    }
    if (config?.interceptors.isNotEmpty ?? false) {
      interceptors.addAll(config!.interceptors);
    }
    httpClientAdapter = DefaultHttpClientAdapter();
    if (config?.proxy?.isNotEmpty ?? false) {
      setProxy(config!.proxy!);
    }
  }

  void setProxy(String proxy) {
    (httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (uri) => "PROXY $proxy";
      return client;
    };
  }
}
