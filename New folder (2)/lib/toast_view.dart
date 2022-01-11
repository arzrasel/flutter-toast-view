library toast_view;

export "src/utils/position.dart";
export "src/plugins/toast.dart"
    show showToast, showToastWidget, ToastView, ToastFuture, dismissAllToast;
export "src/utils/animation/animation_builder.dart";
export "src/utils/animation/miui10_anim.dart";
export "src/utils/animation/offset_builder.dart";
export "src/utils/animation/opacity_builder.dart";
/*

import 'dart:async';

import 'package:flutter/services.dart';

class ToastView {
  static const MethodChannel _channel = MethodChannel('toast_view');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
*/
