import 'package:flutter/material.dart';
import 'package:flutter_app2/intl/intl_localizations_delegate.dart';
import 'package:flutter_app2/localizations/default_localizations_delegate.dart';
import 'package:flutter_app2/second/second.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'first/first.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstRoute(),
        '/second': (context) => SecondRoute()
      },
      localizationsDelegates: [
        IntlLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh','CN'),
        const Locale('zh', 'TW'),
        const Locale('zh', 'HK')
      ],
    );
  }
}
