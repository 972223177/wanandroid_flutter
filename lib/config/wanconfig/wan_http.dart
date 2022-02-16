import 'package:dio/dio.dart';
import 'package:wanandroid_flutter/config/network/http_client.dart';
import 'package:wanandroid_flutter/config/network/http_handler.dart';
import 'package:wanandroid_flutter/config/network/http_result.dart';
import 'package:wanandroid_flutter/config/wanconfig/wan_http_transformer.dart';
import 'package:wanandroid_flutter/models/article.dart';
import 'package:wanandroid_flutter/models/page_data.dart';

const _baseUrl = "https://wanandroid.com/";
const _defaultTimeout = 10000;
HttpClient wanClient = HttpClient(
  HttpHandler(WanHttpTransformer.getInstance()),
  BaseOptions(
    baseUrl: _baseUrl,
    sendTimeout: _defaultTimeout,
    receiveTimeout: _defaultTimeout,
    connectTimeout: _defaultTimeout,
    contentType: Headers.jsonContentType,
  ),
);

Future<dynamic> request<T>(Future<HttpResult> Function() call) async {
  final result = await call();
  if (result.error != null) {
    throw result.error!;
  }
  return result.data;
}

Future<PageData<Article>> getArticles(int pageNum) async {
  final result =
      await request(() => wanClient.get("article/list/$pageNum/json"));
  return PageData.fromJson(result, (v) => Article.fromJson(v));
}
