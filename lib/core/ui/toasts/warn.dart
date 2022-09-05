import 'package:flutter/material.dart';

abstract class Warn {
  void message(
    BuildContext context,
    dynamic message,
  );
  void info(
    BuildContext context,
    dynamic message,
  );
  void success(
    BuildContext context,
    dynamic message,
  );
  void error(BuildContext context, dynamic message,
      [dynamic error, StackTrace? stackTrace]);
}
