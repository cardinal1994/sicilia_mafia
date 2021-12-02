import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class LocaleBase {
  late Map<String, dynamic> _data;
  late String _path;
  Future<void> load(String path) async {
    _path = path;
    final String strJson = await rootBundle.loadString(path);
    _data = jsonDecode(strJson) as Map<String, dynamic>;
    initAll();
  }
  
  Map<String, String> getData(String group) {
    return Map<String, String>.from(_data[group]! as Map<String, dynamic>);
  }

  String getPath() => _path;

  late LocaleMain _main;
  LocaleMain get main => _main;

  void initAll() {
    _main = LocaleMain(Map<String, String>.from(_data['main']! as Map<String, dynamic>));
  }
}

class LocaleMain {
  LocaleMain(this._data);
  late final Map<String, String> _data;


  String getByKey(String key) {
    return _data[key]!;
  }

  String get players => _data['players']!;
  String get loginAsAdministrator => _data['loginAsAdministrator']!;
  String get password => _data['password']!;
  String get somethingWrong => _data['somethingWrong']!;
  String get search => _data['search']!;
  String get userAlreadyAuthorized => _data['userAlreadyAuthorized']!;
  String get balance => _data['balance']!;
  String get nickname => _data['nickname']!;
  String get clubRole => _data['clubRole']!;
  String get createPlayer => _data['createPlayer']!;
  String get cropYourImage => _data['cropYourImage']!;
  String get uploadImage => _data['uploadImage']!;
  String get imageUploaded => _data['imageUploaded']!;
  String get cancel => _data['cancel']!;
  String get add => _data['add']!;
}

