import 'dart:async';

import 'package:dessert_and_more/config/hbo_theme_config.dart';
import 'package:dessert_and_more/core/hbo_initiliazer.dart';
import 'package:dessert_and_more/core/theme/hbo_dimension.dart';
import 'package:flutter/material.dart';

class HboText extends InitializationAdapter {
  static TextStyle? btn;

  // Headings
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  // Body
  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  // Label
  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;

  @override
  FutureOr<void> initialize(BuildContext? context) {
    const b = FontWeight.bold;
    const baseStyle = TextStyle(fontFamily: fontFamily);

    h1 = baseStyle.copyWith(fontSize: HboDimensions.font(22));
    h1b = h1!.copyWith(fontWeight: b);

    h2 = baseStyle.copyWith(fontSize: HboDimensions.font(18));
    h2b = h2!.copyWith(fontWeight: b);

    h3 = baseStyle.copyWith(fontSize: HboDimensions.font(15));
    h3b = h3!.copyWith(fontWeight: b);

    b1 = baseStyle.copyWith(fontSize: HboDimensions.font(10));
    b1b = b1!.copyWith(fontWeight: b);

    b2 = baseStyle.copyWith(fontSize: HboDimensions.font(8));
    b2b = b2!.copyWith(fontWeight: b);

    l1 = baseStyle.copyWith(fontSize: HboDimensions.font(6));
    l1b = l1!.copyWith(fontWeight: b);

    l2 = baseStyle.copyWith(fontSize: HboDimensions.font(4));
    l2b = l2!.copyWith(fontWeight: b);
  }
}
