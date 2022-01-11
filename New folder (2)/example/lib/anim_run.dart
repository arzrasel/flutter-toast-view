import 'dart:math' show min;

import 'package:flutter/material.dart';
import 'package:toast_view/toast_view.dart';

class AnimRunBuilder extends BaseAnimationBuilder {
  const AnimRunBuilder();

  @Deprecated('Please build animation builders outside the package.')
  @override
  Widget buildWidget(
      BuildContext context,
      Widget child,
      AnimationController controller,
      double percent,
      ) {
    final double opacity = min(1.0, percent + 0.2);
    final double offset = (1 - percent) * 20;

    return Opacity(
      opacity: opacity,
      child: Transform.translate(child: child, offset: Offset(0, offset)),
    );
  }
}