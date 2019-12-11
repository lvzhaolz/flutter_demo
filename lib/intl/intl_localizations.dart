import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';

class IntlLocalizations {
  static IntlLocalizations of(BuildContext context) {
    return Localizations.of(context, IntlLocalizations);
  }

//  static Future<IntlLocalizations> load(Locale locale) {
//    String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
//    name = 'en';
//    String localeName = Intl.canonicalizedLocale(name);
//    return initializeMessages(localeName).then((_) {
//      Intl.defaultLocale = localeName;
//      return IntlLocalizations();
//    });
//  }

  static Future<IntlLocalizations> load(Locale locale) {
    print(locale.toString());
    return initializeMessages("zh_hans")
        .then((Object _) {
      return new IntlLocalizations();
    });
  }

  String get title {
    return Intl.message('title');
  }
}
