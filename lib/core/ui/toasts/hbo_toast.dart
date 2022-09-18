import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hbosoftware/core/ui/thypography/app_typography.dart';
import 'package:hbosoftware/core/ui/toasts/warn.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class HboToast extends Warn {
  HboToast._();

  static final toast = HboToast._();

  @override
  void error(BuildContext context, message,
      [error, StackTrace? stackTrace, Function()? onClose]) {
    MotionToast.error(
      animationDuration: const Duration(seconds: 1),
      toastDuration: const Duration(seconds: 2),
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(
        '$message',
      ),
      animationType: AnimationType.fromLeft,
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      onClose: onClose,
    ).show(context);
  }

  @override
  void info(
    context,
    message,
  ) {
    MotionToast.delete(
      title: const Text(
        'Bilgi',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(
        '$message',
      ),
      animationType: AnimationType.fromTop,
      position: MotionToastPosition.top,
      dismissable: true,
    ).show(context);
  }

  @override
  void message(
    context,
    message,
  ) {
    MotionToast.info(
      title: const Text(
        'Mesaj',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      position: MotionToastPosition.center,
      description: Text(
        '$message',
      ),
    ).show(context);
  }

  @override
  void success(
    context,
    message,
  ) {
    MotionToast.success(
      title: AutoSizeText(
        'Başarılı',
        style: HboText.h1,
      ),
      description: AutoSizeText(
        '$message',
        style: HboText.l1b,
      ),
      layoutOrientation: ToastOrientation.rtl,
      animationType: AnimationType.fromRight,
      dismissable: true,
    ).show(context);
  }
}
