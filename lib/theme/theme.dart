import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wanandroid_flutter/config/log.dart';
import 'package:wanandroid_flutter/main.dart';
import 'package:wanandroid_flutter/theme/colors.dart';
import 'package:wanandroid_flutter/utils/sp_util.dart';

const _darkTheme = "isDarkTheme";

class DarkThemeNotifier extends StateNotifier<bool> {
  DarkThemeNotifier() : super(isDark);

  @override
  set state(bool value) {
    super.state = value;
    SpUtil.putBoolean(_darkTheme, value);
  }
}

final darkThemeProvider = StateNotifierProvider<DarkThemeNotifier, bool>(
    (ref) => DarkThemeNotifier());

bool get isDark {
  final localSetting = SpUtil.getBoolean(_darkTheme);
  if (localSetting) {
    return true;
  }
  final context = globalAppNavKey.currentContext;
  logD("isDarkFunc context:${context == null}");
  if (context == null) {
    return false;
  }
  return Theme.of(context).brightness == Brightness.dark;
}

ThemeData wanTheme(bool isDark) {
  return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: main1(isDark),
        unselectedItemColor: textThird(isDark),
        backgroundColor: surface1(isDark),
      ));
}
