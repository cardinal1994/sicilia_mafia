import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';
import 'package:sicilia_mafia/resources/strings.dart';
import 'package:sicilia_mafia/ui/widgets/login_text_field.dart';
import 'package:sicilia_mafia/ui/widgets/separators.dart';

class LoginAdministrator extends StatelessWidget {
  final Separators _separators = Separators();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _loginFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final LocaleBase loc = Localizations.of<LocaleBase>(context, LocaleBase)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(loc.main.loginAsAdministrator),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              /// add logout functionality
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: CustomInsets.SYMMETRIC_HORIZONTAL_20P,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _separators.height20(),
              LoginTextField(
                controller: _loginController,
                hintText: Strings.EMAIL,
                focusNode: _loginFocusNode,
                onSubmitted: (String value) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                },
              ),
              _separators.height20(),
              LoginTextField(
                controller: _passwordController,
                hintText: loc.main.password,
                focusNode: _passwordFocusNode,
                onSubmitted: (String value) {
                  /// login function
                },
              ),
              _separators.height50(),
              ElevatedButton(
                onPressed: () {
                  /// login function
                },
                child: Container(
                  padding: CustomInsets.VERTICAL_10P,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    loc.main.loginAsAdministrator,
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
