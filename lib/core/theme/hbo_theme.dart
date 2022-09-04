import 'dart:async';

import 'package:dessert_and_more/core/hbo_initiliazer.dart';
import 'package:dessert_and_more/core/theme/hbo_core_theme.dart';
import 'package:flutter/material.dart';

class HboTheme extends InitializationAdapter {
  static final _core = HboCoreTheme(
      shadowSub: const Color.fromARGB(255, 0, 0, 0).withAlpha(100),
      primary: const Color.fromARGB(255, 103, 103, 103),
      primaryLight: const Color.fromARGB(255, 255, 255, 255),
      textSub: const Color(0xff141414),
      textSub2: Colors.white);

  static HboCoreTheme light = _core.copyWith(
      background: const Color.fromARGB(255, 196, 194, 194),
      backgroundSub: const Color(0xffF0F0F0),
      scaffold: const Color(0xfffefefe),
      scaffoldDark: const Color(0xfffcfcfc),
      text: const Color(0xff484848),
      textSub2: Colors.black);

  static HboCoreTheme dark = _core.copyWith(
    background: Colors.grey[900],
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white,
  );

  static HboCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  @override
  FutureOr<void> initialize(BuildContext? context) {
    c = isDark(context!) ? dark : light;
  }
}
