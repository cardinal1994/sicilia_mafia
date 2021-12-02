import 'package:flutter/material.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';

class DialogBody extends StatelessWidget {
  const DialogBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomInsets.HORIZONTAL_15P,
      color: Colors.black45,
      child: Center(
        child: Card(
          elevation: 4,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            margin: CustomInsets.HORIZONTAL_20P_VERTICAL_30P,
            child: child,
          ),
        ),
      ),
    );
  }
}
