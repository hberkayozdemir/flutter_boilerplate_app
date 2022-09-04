import 'dart:async';

import 'package:flutter/material.dart';

/// This adapter pattern interface might be implemented
/// when a 3rd party package/plugin
/// needs to be registered in the main file
abstract class InitializationAdapter {
  FutureOr<void> initialize(BuildContext ? context);
}
