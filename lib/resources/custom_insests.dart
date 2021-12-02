import 'package:flutter/material.dart';

import 'custom_dimensions.dart';

class CustomInsets {

  /// Right

  static const EdgeInsets RIGHT_100P = EdgeInsets.only(
    right: CustomDimensions.DIMEN100,
  );

  /// Horizontal

  static const EdgeInsets HORIZONTAL_15P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN15,
  );

  static const EdgeInsets HORIZONTAL_50P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN50,
  );

  /// Vertical

  static const EdgeInsets VERTICAL_10P = EdgeInsets.symmetric(
    vertical: CustomDimensions.DIMEN10,
  );

  /// Horizontal and Vertical

  static const EdgeInsets HORIZONTAL_20P_VERTICAL_10P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN20,
    vertical: CustomDimensions.DIMEN10,
  );

  static const EdgeInsets HORIZONTAL_20P_VERTICAL_30P = EdgeInsets.symmetric(
    horizontal: CustomDimensions.DIMEN20,
    vertical: CustomDimensions.DIMEN30,
  );


}
