import 'package:dessert_and_more/core/theme/hbo_dimension.dart';
import 'package:dessert_and_more/core/theme/hbo_theme.dart';
import 'package:flutter/material.dart';

abstract class UIProps {
  // Animations
  static Duration duration = const Duration(milliseconds: 280);
  static Duration duration2 = const Duration(milliseconds: 400);

  // Paddings
  static EdgeInsets? btnPadMed;
  static EdgeInsets? btnPadSm;

  // Radius
  static double radius = 6.0;
  static BorderRadius? tabRadius;
  static BorderRadius? buttonRadius;
  static BorderRadius? cardRadius;
  static BoxDecoration? borderButton;

  // Shadows
  static List<BoxShadow>? cardShadow;

  // BoxDecoration
  static BoxDecoration? boxCard;

  static init() {
    initRadius();
    initButtons();
    initShadows();
    initBoxDecorations();
  }

  static initRadius() {
    tabRadius = BorderRadius.circular(radius * 2);
    buttonRadius = BorderRadius.circular(radius);
    cardRadius = BorderRadius.circular(radius * 2);
  }

  static initButtons() {
    borderButton = BoxDecoration(
      borderRadius: UIProps.buttonRadius,
      border: Border.all(
        width: 1.4,
        color: HboTheme.c!.primary!,
      ),
    );
    btnPadSm = EdgeInsets.symmetric(
      horizontal: HboDimensions.padding! * 2,
      vertical: HboDimensions.padding! * 1.0,
    );
    btnPadMed = EdgeInsets.symmetric(
      horizontal: HboDimensions.padding! * 3,
      vertical: HboDimensions.padding! * 1.5,
    );
  }

  static initShadows() {
    cardShadow = [
      BoxShadow(
        color: HboTheme.c!.shadowSub!,
        blurRadius: 6,
      ),
    ];
  }

  static initBoxDecorations() {
    boxCard = BoxDecoration(
      borderRadius: cardRadius,
      boxShadow: cardShadow,
      color: HboTheme.c!.background,
    );
  }
}
