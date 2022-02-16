import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wanandroid_flutter/generated/assets.dart';
import 'package:wanandroid_flutter/pages/home/home_page.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  static const _bottomTabTitles = ['首页', '问答', '体系', '我得'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) => IndexedStack(
          index: ref.watch(pageProvider.state).state,
          children: List.generate(
            4,
            (index) {
              late Widget page;
              switch (index) {
                case 0:
                  page = const HomePage();
                  break;
                default:
                  page = const SizedBox.expand();
              }
              return page;
            },
          ),
        ),
      ),
      bottomNavigationBar: Consumer(
          builder: (context, ref, _) => BottomNavigationBar(
                items: List.generate(4, (index) {
                  String asset = "";
                  switch (index) {
                    case 0:
                      asset = Assets.imagesIcBottomBarHome;
                      break;
                    case 1:
                      asset = Assets.imagesIcBottomBarQues;
                      break;
                    case 2:
                      asset = Assets.imagesIcBottomBarNavi;
                      break;
                    default:
                      asset = Assets.imagesIcBottomBarMine;
                  }
                  return BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(asset)),
                      label: _bottomTabTitles[index]);
                }),
                currentIndex: ref.watch(pageProvider.state).state,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
                type: BottomNavigationBarType.fixed,
                onTap: (index) => ref.watch(pageProvider.state).state = index,
              )),
    );
  }
}

final pageProvider = StateProvider<int>((ref) => 0);
