import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicilia_mafia/bloc/auth_cubit/auth_cubit.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';
import 'package:sicilia_mafia/resources/routes.dart';
import 'package:sicilia_mafia/resources/strings.dart';
import 'package:sicilia_mafia/ui/widgets/custom_progress_indicator.dart';
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

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (BuildContext context, AuthState state) {
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
                onPressed: () async {
                  await context.read<AuthCubit>().signOut();
                },
                icon: const Icon(
                  Icons.logout,
                ),
              ),
            ],
          ),
          body: BlocListener<AuthCubit, AuthState>(
            listener: (BuildContext context, AuthState state) {
              if (state.isUserAuthorized) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.HOME_PAGE, (Route<dynamic> route) => false);
              }
              if (state.hasException) {
                showDialog<Widget>(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    state.errorMessage,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color:
                                                Theme.of(context).errorColor),
                                  ),
                                  _separators.height50(),
                                  Container(
                                    width: MediaQuery.of(context).size.height,
                                    margin: CustomInsets.HORIZONTAL_50P,
                                    child: ElevatedButton(
                                        onPressed: () async {
                                          await context
                                              .read<AuthCubit>()
                                              .changeExceptionStatus(
                                                  hasException: false);
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }
            },
            child: Stack(
              children: <Widget>[
                if (state.loading) const CustomProgressIndicator(),
                if (!state.isUserAuthorized)
                  Center(
                    child: Container(
                      padding: CustomInsets.HORIZONTAL_20P_VERTICAL_10P,
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
                              FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode);
                            },
                          ),
                          _separators.height20(),
                          LoginTextField(
                            controller: _passwordController,
                            hintText: loc.main.password,
                            focusNode: _passwordFocusNode,
                            onSubmitted: (String value) async {
                              await context.read<AuthCubit>().signIn(
                                    email: _loginController.text,
                                    password: _passwordController.text,
                                  );
                            },
                          ),
                          _separators.height50(),
                          ElevatedButton(
                            onPressed: () async {
                              await context.read<AuthCubit>().signIn(
                                    email: _loginController.text,
                                    password: _passwordController.text,
                                  );
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
                if (state.isUserAuthorized)
                  Center(
                    child: Text(loc.main.userAlreadyAuthorized),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
