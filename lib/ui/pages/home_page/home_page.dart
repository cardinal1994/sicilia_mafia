import 'package:flutter/material.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';
import 'package:sicilia_mafia/models/user.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';
import 'package:sicilia_mafia/resources/routes.dart';
import 'package:sicilia_mafia/ui/widgets/custom_divider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<User> users = <User>[
    const User(nickname: 'Vasya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Vasya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
    const User(nickname: 'Patya', balance: 150),
  ];

  @override
  Widget build(BuildContext context) {

    final LocaleBase loc = Localizations.of<LocaleBase>(context, LocaleBase)!;
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
      body: Container(
        child: ListView.separated(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: CustomInsets.SYMMETRIC_HORIZONTAL_20P,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    users[index].nickname,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    users[index].balance.toString(),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              CustomDivider.BLACK_DIVIDER,
        ),
      ),
    );
  }
}
