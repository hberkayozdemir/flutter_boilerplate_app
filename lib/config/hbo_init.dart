import 'package:dessert_and_more/core/hbo_initiliazer.dart';
import 'package:dessert_and_more/core/log/hbo_logger_impl.dart';
import 'package:dessert_and_more/core/theme/hbo_dimension.dart';
import 'package:dessert_and_more/core/theme/hbo_theme.dart';
import 'package:dessert_and_more/core/theme/hbo_ui.dart';
import 'package:dessert_and_more/core/theme/hbo_ui_props.dart';
import 'package:dessert_and_more/core/ui/hbo_spacer.dart';
import 'package:dessert_and_more/core/ui/thypography/app_typography.dart';
import 'package:flutter/material.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) async {
    final features = <InitializationAdapter>[
      UI(),
      HboDimensions(),
      HboTheme(),
      Space(),
      HboText(),
    ];
    for (final feature in features) {
      await feature.initialize(context);
      HboAppLog.log.d('${feature.runtimeType} initialized');
    }
    UIProps.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
