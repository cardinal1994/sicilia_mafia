import 'package:flutter/material.dart';
import 'package:sicilia_mafia/resources/strings.dart';

class DialogTextField extends StatelessWidget {
  const DialogTextField({
    int maxLines = 1,
    int maxLength = 25,
    TextEditingController? controller,
    Function(String)? onSubmitted,
    Function(String)? onChanged,
    FocusNode? focusNode,
    String hintText = Strings.EMPTY,
  })  : _maxLines = maxLines,
        _maxLength = maxLength,
        _controller = controller,
        _onSubmitted = onSubmitted,
        _focusNode = focusNode,
        _onChanged = onChanged,
        _hintText = hintText;

  final int _maxLines;
  final int _maxLength;
  final Function(String)? _onSubmitted;
  final TextEditingController? _controller;
  final String _hintText;
  final FocusNode? _focusNode;
  final Function(String)? _onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: _maxLines,
      maxLength: _maxLength,
      controller: _controller,
      onSubmitted: _onSubmitted,
      onChanged: _onChanged,
      focusNode: _focusNode,

      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        counterText: Strings.EMPTY,
        hintText: _hintText,
        //focusedBorder: InputBorder.none,
        //enabledBorder: InputBorder.none,
        //errorBorder: InputBorder.none,
        //disabledBorder: InputBorder.none,
      ),
    );
  }
}
