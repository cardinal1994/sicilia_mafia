import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicilia_mafia/bloc/players_cubit/players_cubit.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';
import 'package:sicilia_mafia/resources/routes.dart';
import 'package:sicilia_mafia/ui/widgets/custom_divider.dart';
import 'package:sicilia_mafia/ui/widgets/custom_progress_indicator.dart';
import 'package:sicilia_mafia/ui/widgets/login_text_field.dart';
import 'package:sicilia_mafia/ui/widgets/separators.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Separators _separators = Separators();

  @override
  Widget build(BuildContext context) {
    final LocaleBase loc = Localizations.of<LocaleBase>(context, LocaleBase)!;
    return BlocConsumer<PlayersCubit, PlayersState>(
      listener: (BuildContext context, PlayersState state) async {
        if (state.hasException) {
          showDialog<Widget>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.black45,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          loc.main.somethingWrong,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Theme.of(context).errorColor),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK')),
                      ],
                    ),
                  ),
                );
              });
        }
      },
      builder: (BuildContext context, PlayersState state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(loc.main.players),
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Routes.LOGIN_ADMINISTRATOR_PAGE);
                },
                icon: const Icon(
                  Icons.login,
                ),
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              if (state.users == null || state.users!.isEmpty)
                Container()
              else
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: CustomInsets.HORIZONTAL_15P,
                        child: LoginTextField(
                          hintText: loc.main.search,
                          onChanged: (String value) async {
                            await context
                                .read<PlayersCubit>()
                                .searchPlayers(value);
                          },
                        ),
                      ),
                      _separators.height20(),
                      Expanded(
                        child: Container(
                          //height: MediaQuery.of(context).size.height,
                          child: ListView.separated(
                            shrinkWrap: true,
                            //physics: const BouncingScrollPhysics(),
                            itemCount: state.searchUsers == null
                                ? state.users!.length
                                : state.searchUsers!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: CustomInsets.HORIZONTAL_20P_VERTICAL_10P,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      state.searchUsers == null
                                          ? state.users![index].nickname
                                          : state.searchUsers![index].nickname,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      state.searchUsers == null
                                          ? state.users![index].balance
                                              .toString()
                                          : state.searchUsers![index].balance
                                              .toString(),
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    CustomDivider.BLACK_DIVIDER,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (state.loading)
                const CustomProgressIndicator(),
            ],
          ),
        );
      },
    );
  }
}


