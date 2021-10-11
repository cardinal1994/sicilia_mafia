import 'package:flutter/material.dart';
import 'package:sicilia_mafia/resources/custom_dimensions.dart';

class Separators {

  /// heights

  Widget height20() {
    return const SizedBox(
      height: CustomDimensions.DIMEN20,
    );
  }

  Widget height50() {
    return const SizedBox(
      height: CustomDimensions.DIMEN50,
    );
  }

  Widget height10() {
    return const SizedBox(
      height: CustomDimensions.DIMEN10,
    );
  }
}