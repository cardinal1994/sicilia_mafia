import 'package:flutter/material.dart';

import 'custom_dimensions.dart';

class CustomInsets {

  /// Horizontal

  static const EdgeInsets SYMMETRIC_HORIZONTAL_20P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN20,
    vertical: CustomDimensions.DIMEN10,
  );

  static const EdgeInsets HORIZONTAL_15P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN15,
  );

  /// Vertical

  static const EdgeInsets VERTICAL_10P = EdgeInsets.symmetric(
    vertical: CustomDimensions.DIMEN10,
  );
}
