import 'package:flutter/cupertino.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';

class LocDelegate extends LocalizationsDelegate<LocaleBase> {
  const LocDelegate();

  Map<String, String> get idMap => <String, String>{'en': 'locales/EN_US.json'};

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  Future<LocaleBase> load(Locale locale) async {
    String lang = 'en';
    if (isSupported(locale)) {
      lang = locale.languageCode;
    }
    final LocaleBase loc = LocaleBase();
    await loc.load(idMap[lang]!);
    return loc;
  }

  @override
  bool shouldReload(LocDelegate old) => false;
}
