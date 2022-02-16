import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wanandroid_flutter/config/wanconfig/wan_http.dart';
import 'package:wanandroid_flutter/models/article.dart';
import 'package:wanandroid_flutter/models/page_data.dart';
import 'package:wanandroid_flutter/pages/components/item_article.dart';
import 'package:wanandroid_flutter/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer(
              builder: (context, ref, child) => Switch(
                  value: ref.watch(_checkProvider.state).state,
                  onChanged: (checked) {
                    ref.read(darkThemeProvider.notifier).state = checked;
                    ref.read(_checkProvider.state).state = checked;
                  }))
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) => ref.watch(_articleProvider).when(
              data: (data) {
                final list = data.datas ?? [];
                return ListView.builder(
                  itemBuilder: (context, index) =>
                      ItemArticle(article: list[index]),
                  itemCount: list.length,
                );
              },
              error: (e, s) => Text(e.toString()),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
    );
  }
}

final _checkProvider = StateProvider<bool>((ref) => isDark);

final _articleProvider = FutureProvider<PageData<Article>>((ref) async {
  return getArticles(0);
});
