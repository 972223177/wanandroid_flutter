import 'package:flutter/material.dart';

const green27AE60 = Color(0xff27ae60);
const green3DF48B = Color(0xff3DF48B);
const green3CDC86 = Color(0xff3cdc86);
const green67DB9D = Color(0xff67db9d);

const orangeF86734 = Color(0xfff86734);
const orangeF78C65 = Color(0xfff78c65);

const blue4282F4 = Color(0xff4282f4);
const blue4282F4A60 = Color(0x994282f4);
const blue3365DB = Color(0xff3365db);
const blue3365DBA60 = Color(0x993365db);
const blue73A3F5 = Color(0xff73a3f5);
const blue73A3F5A05 = Color(0x1173a3f5);
const blue73A3F5A60 = Color(0x9973a3f5);

const grayEAEAEA = Color(0xffeaeaea);
const grayF5F5F5 = Color(0xfff5f5f5);
const grayF5F5F5A80 = Color(0xccf5f5f5);
const gray333333 = Color(0xff333333);
const gray333333A50 = Color(0x88333333);
const gray666666 = Color(0xff666666);
const gray999999 = Color(0xff999999);
const grayCCCCCC = Color(0xffcccccc);

const blackA93 = Color(0xee000000);
const blackA50 = Color(0xaa000000);
const blackA47 = Color(0x77000000);
const blackA40 = Color(0x66000000);
const blackA30 = Color(0x4d000000);
const blackA13 = Color(0x22000000);
const blackA08 = Color(0x14000000);
const blackA10 = Color(0x1A000000);
const blackA05 = Color(0x11000000);
const black111111 = Color(0xff111111);
const black111111A86 = Color(0xdd111111);
const black131313 = Color(0xff131313);
const black181818 = Color(0xff181818);
const black181818A80 = Color(0xcc181818);
const black222425 = Color(0xff222425);
const black222425A93 = Color(0xee222425);

const whiteA80 = Color(0xccffffff);
const whiteA70 = Color(0xb3ffffff);
const whiteA50 = Color(0x88ffffff);
const whiteA33 = Color(0x54ffffff);
const whiteA30 = Color(0x4dffffff);
const whiteA20 = Color(0x33ffffff);
const whiteA05 = Color(0x11ffffff);

Color main1(bool isDark) => !isDark ? blue4282F4 : blue73A3F5;

Color mainAlpha(bool isDark) => !isDark ? blue4282F4A60 : blue73A3F5A60;

Color striking(bool isDark) => !isDark ? orangeF86734 : orangeF78C65;

Color assist(bool isDark) => !isDark ? green3CDC86 : green67DB9D;

Color dialogBg(bool isDark) => blackA50;

Color toastBg(bool isDark) => !isDark ? Colors.white : black111111;

Color rippleDark(bool isDark) => !isDark ? blackA05 : blue73A3F5A05;

Color rippleLight(bool isDark) => !isDark ? whiteA05 : whiteA20;

Color launcherBackground(bool isDark) => blue4282F4;

Color line(bool isDark) => !isDark ? grayEAEAEA : black111111;

Color background1(bool isDark) => !isDark ? grayF5F5F5 : black111111;

Color background1Alpha(bool isDark) => !isDark ? grayF5F5F5A80 : black111111A86;

Color background1Mask(bool isDark) => !isDark ? blackA05 : whiteA05;

Color foreground1(bool isDark) => !isDark ? Colors.white : black111111;

Color foreground1Alpha(bool isDark) => !isDark ? whiteA80 : black111111A86;

Color foreground1Mask(bool isDark) => !isDark ? whiteA80 : whiteA05;

Color foreground1Top(bool isDark) => !isDark ? grayF5F5F5 : black181818;

Color surface1(bool isDark) => !isDark ? Colors.white : black181818;

Color surface1Alpha(bool isDark) => !isDark ? whiteA80 : black181818A80;

Color surface1Mask(bool isDark) => !isDark ? blackA05 : whiteA05;

Color surface1Top(bool isDark) => !isDark ? grayF5F5F5 : black222425;

Color surface1TopAlpha(bool isDark) => !isDark ? grayF5F5F5A80 : black222425A93;

Color surface1TopMask(bool isDark) => !isDark ? blackA05 : whiteA05;

Color invert(bool isDark) => !isDark ? gray333333 : whiteA70;

Color invertAlpha(bool isDark) => !isDark ? blackA05 : whiteA05;

Color second(bool isDark) => !isDark ? gray666666 : whiteA50;

Color third(bool isDark) => !isDark ? gray999999 : whiteA33;

Color fourth(bool isDark) => !isDark ? grayCCCCCC : whiteA20;

Color shadow(bool isDark) => !isDark ? blackA08 : blackA40;

Color shadowMain(bool isDark) => blue3365DBA60;

Color textMain(bool isDark) => !isDark ? blue4282F4 : blue73A3F5;

Color textMainAlpha(bool isDark) => !isDark ? blue4282F4A60 : blue73A3F5A60;

Color textSecond(bool isDark) => !isDark ? gray666666 : whiteA50;

Color textThird(bool isDark) => !isDark ? gray999999 : whiteA33;

Color textFourth(bool isDark) => !isDark ? grayCCCCCC : whiteA20;

Color textInvert(bool isDark) => !isDark ? Colors.white : blackA93;

Color textInvertAlpha(bool isDark) => !isDark ? whiteA50 : blackA47;

Color textOnMain(bool isDark) => !isDark ? Colors.white : blackA93;

Color iconMain(bool isDark) => !isDark ? blue4282F4 : blue73A3F5;

Color iconAccent(bool isDark) => !isDark ? orangeF86734 : orangeF78C65;

Color iconSurface(bool isDark) => !isDark ? gray333333 : whiteA70;

Color iconSecond(bool isDark) => !isDark ? gray666666 : whiteA50;

Color iconThird(bool isDark) => !isDark ? gray999999 : whiteA33;

Color iconFourth(bool isDark) => !isDark ? grayCCCCCC : whiteA20;

Color iconInvert(bool isDark) => !isDark ? Colors.white : blackA93;

Color iconOnMain(bool isDark) => !isDark ? Colors.white : blackA10;

Color iconLight(bool isDark) => !isDark ? Colors.white : whiteA70;

Color iconDark(bool isDark) => !isDark ? gray333333 : blackA93;

Color textSurface(bool isDark) => !isDark ? gray333333 : whiteA70;

Color textSurfaceAlpha(bool isDark) => !isDark ? gray333333A50 : whiteA30;

Color textAccent(bool isDark) => !isDark ? orangeF86734 : orangeF78C65;

Color mainOrSurface(bool isDark) => !isDark ? blue4282F4 : black181818;

Color onMainOrSurface(bool isDark) => !isDark ? Colors.white : whiteA70;

Color onMainOrSurfaceAlpha(bool isDark) => !isDark ? whiteA50 : whiteA30;

Color loginBg(bool isDark) => !isDark ? blue4282F4 : black111111;

Color mineBlurOverlay(bool isDark) => !isDark ? blackA05 : black181818A80;

Color bottomBarOverlay(bool isDark) => !isDark ? grayF5F5F5A80 : black181818A80;

Color aboutMeBlurOverlay(bool isDark) => !isDark ? blackA05 : black181818A80;

Color scrollbar(bool isDark) => !isDark ? blackA13 : whiteA05;

Color heartUncheckedOnMain(bool isDark) => !isDark ? blue4282F4 : black181818;

Color hearOuter(bool isDark) => !isDark ? orangeF86734 : orangeF78C65;

Color heartCenter(bool isDark) => orangeF78C65;

Color switcherThumbChecked(bool isDark) => blue4282F4;

Color switcherTrackChecked(bool isDark) => blue4282F4A60;
