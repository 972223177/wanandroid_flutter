import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/theme/colors.dart' as c;

extension ThemeExt on ThemeData {
  bool get isDarkTheme => brightness == Brightness.dark;

  bool get isLightTheme => brightness == Brightness.light;

  Color get main1 => c.main1(isLightTheme);

  Color get mainAlpha => c.mainAlpha(isLightTheme);

  Color get striking => c.striking(isLightTheme);

  Color get assist => c.assist(isLightTheme);

  Color get dialogBg => c.dialogBg(isLightTheme);

  Color get toastBg => c.toastBg(isLightTheme);

  Color get rippleDark => c.rippleDark(isLightTheme);

  Color get rippleLight => c.rippleLight(isLightTheme);

  Color get launcherBackground => c.launcherBackground(isLightTheme);

  Color get line => c.line(isLightTheme);

  Color get background1 => c.background1(isLightTheme);

  Color get background1Alpha => c.background1Alpha(isLightTheme);

  Color get background1Mask => c.background1Mask(isLightTheme);

  Color get foreground1 => c.foreground1(isLightTheme);

  Color get foreground1Alpha => c.foreground1Alpha(isLightTheme);

  Color get foreground1Mask => c.foreground1Mask(isLightTheme);

  Color get foreground1Top => c.foreground1Top(isLightTheme);

  Color get surface1 => c.surface1(isLightTheme);

  Color get surface1Alpha => c.surface1Alpha(isLightTheme);

  Color get surface1Mask => c.surface1Mask(isLightTheme);

  Color get surface1Top => c.surface1Top(isLightTheme);

  Color get surface1TopAlpha => c.surface1TopAlpha(isLightTheme);

  Color get surface1TopMask => c.surface1TopMask(isLightTheme);

  Color get invert => c.invert(isLightTheme);

  Color get invertAlpha => c.invertAlpha(isLightTheme);

  Color get second => c.second(isLightTheme);

  Color get third => c.third(isLightTheme);

  Color get fourth => c.fourth(isLightTheme);

  Color get shadow => c.shadow(isLightTheme);

  Color get shadowMain => c.shadowMain(isLightTheme);

  Color get textMain => c.textMain(isLightTheme);

  Color get textMainAlpha => c.textMainAlpha(isLightTheme);

  Color get textSecond => c.textSecond(isLightTheme);

  Color get textThird => c.textThird(isLightTheme);

  Color get textFourth => c.textFourth(isLightTheme);

  Color get textInvert => c.textInvert(isLightTheme);

  Color get textInvertAlpha => c.textInvertAlpha(isLightTheme);

  Color get textOnMain => c.textOnMain(isLightTheme);

  Color get iconMain => c.iconMain(isLightTheme);

  Color get iconAccent => c.iconAccent(isLightTheme);

  Color get iconSurface => c.iconSurface(isLightTheme);

  Color get iconSecond => c.iconSecond(isLightTheme);

  Color get iconThird => c.iconThird(isLightTheme);

  Color get iconFourth => c.iconFourth(isLightTheme);

  Color get iconInvert => c.iconInvert(isLightTheme);

  Color get iconOnMain => c.iconOnMain(isLightTheme);

  Color get iconLight => c.iconLight(isLightTheme);

  Color get iconDark => c.iconDark(isLightTheme);

  Color get textSurface => c.textSurface(isLightTheme);

  Color get textSurfaceAlpha => c.textSurfaceAlpha(isLightTheme);

  Color get textAccent => c.textAccent(isLightTheme);

  Color get mainOrSurface => c.mainOrSurface(isLightTheme);

  Color get onMainOrSurface => c.onMainOrSurface(isLightTheme);

  Color get onMainOrSurfaceAlpha => c.onMainOrSurfaceAlpha(isLightTheme);

  Color get loginBg => c.loginBg(isLightTheme);

  Color get mineBlurOverlay => c.mineBlurOverlay(isLightTheme);

  Color get bottomBarOverlay => c.bottomBarOverlay(isLightTheme);

  Color get aboutMeBlurOverlay => c.aboutMeBlurOverlay(isLightTheme);

  Color get scrollbar => c.scrollbar(isLightTheme);

  Color get heartUncheckedOnMain => c.heartUncheckedOnMain(isLightTheme);

  Color get hearOuter => c.hearOuter(isLightTheme);

  Color get heartCenter => c.heartCenter(isLightTheme);

  Color get switcherThumbChecked => c.switcherThumbChecked(isLightTheme);

  Color get switcherTrackChecked => c.switcherTrackChecked(isLightTheme);
}
