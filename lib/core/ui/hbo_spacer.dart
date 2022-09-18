import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hbosoftware/core/hbo_initiliazer.dart';
import 'package:hbosoftware/core/theme/hbo_dimension.dart';
import 'package:hbosoftware/core/theme/hbo_ui.dart';

class Space extends InitializationAdapter {
  static Widget? x;
  static Widget? y;
  static Widget? x1;
  static Widget? y1;
  static Widget? x2;
  static Widget? y2;
  static Widget? xm;
  static Widget? ym;

  static EdgeInsets? z;
  static EdgeInsets? h;
  static EdgeInsets? v;
  static EdgeInsets? h1;
  static EdgeInsets? v1;
  static EdgeInsets? h2;
  static EdgeInsets? v2;

  static Widget? top;
  static Widget? bottom;

  static Widget xf([double no = 1]) => SizedBox(width: HboDimensions.space(no));
  static Widget yf([double no = 1]) =>
      SizedBox(height: HboDimensions.space(no));

  static EdgeInsets hf([double no = 1]) => EdgeInsets.symmetric(
        horizontal: HboDimensions.space(no),
      );
  static EdgeInsets vf([double no = 1]) => EdgeInsets.symmetric(
        vertical: HboDimensions.space(no),
      );

  static EdgeInsets all([double h = 0.5, double? v]) => EdgeInsets.symmetric(
        vertical: HboDimensions.space(v ?? h),
        horizontal: HboDimensions.space(h),
      );

  @override
  FutureOr<void> initialize(BuildContext? context) {
    x = SizedBox(width: HboDimensions.space(0.5));
    y = SizedBox(height: HboDimensions.space(0.5));

    x1 = SizedBox(width: HboDimensions.space());
    y1 = SizedBox(height: HboDimensions.space());

    x2 = SizedBox(width: HboDimensions.space(2));
    y2 = SizedBox(height: HboDimensions.space(2));

    xm = const Expanded(child: SizedBox(width: double.infinity));
    ym = const Expanded(child: SizedBox(height: double.infinity));

    z = EdgeInsets.zero;
    h = EdgeInsets.symmetric(horizontal: HboDimensions.space(0.5));
    v = EdgeInsets.symmetric(vertical: HboDimensions.space(0.5));

    h1 = EdgeInsets.symmetric(horizontal: HboDimensions.space());
    v1 = EdgeInsets.symmetric(vertical: HboDimensions.space());

    h2 = EdgeInsets.symmetric(horizontal: HboDimensions.space(2));
    v2 = EdgeInsets.symmetric(vertical: HboDimensions.space(2));

    top = SizedBox(height: UI.padding!.top);
    bottom = SizedBox(height: UI.padding!.bottom);
  }
}
