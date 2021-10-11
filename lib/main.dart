
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sicilia_mafia/resources/app_themes.dart';
import 'package:sicilia_mafia/resources/routes.dart';
import 'package:sicilia_mafia/ui/pages/home_page/home_page.dart';
import 'package:sicilia_mafia/ui/pages/login_administrator_page/login_administrator_page.dart';

import 'generated/locale_base.dart';
import 'localization/local_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    addLocale();
    final AppThemes _themes = AppThemes();

    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: _themes.setDarkTheme(),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        LocDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: Routes.HOME_PAGE,
      routes: routes,
    );
  }

  void addLocale() {
    final LocaleBase lBase = LocaleBase();
    lBase.load('locales/EN_US.json');
  }

  final Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    Routes.LOGIN_ADMINISTRATOR_PAGE: (BuildContext context) =>
        LoginAdministrator(),
    Routes.HOME_PAGE: (BuildContext context) => HomePage(),
  };
}
