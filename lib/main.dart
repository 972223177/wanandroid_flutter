import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanandroid_flutter/pages/main_page.dart';
import 'package:wanandroid_flutter/theme/theme.dart';
import 'package:wanandroid_flutter/utils/sp_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.init();
  runApp(const ProviderScope(child: MyApp()));
}

GlobalKey<NavigatorState> globalAppNavKey = GlobalKey();

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'WanAndroid',
      navigatorKey: globalAppNavKey,
      theme: wanTheme(ref.watch(darkThemeProvider)),
      home: const MainPage(),
    );
  }
}
