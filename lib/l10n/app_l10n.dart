import 'package:flutter/material.dart';
import 'package:l18n_example/l10n/app_translation.dart';
import 'package:l18n_example/l10n/translations/en_us_app_translation.dart';
import 'package:l18n_example/l10n/translations/es_mx_app_translation.dart';
import 'package:l18n_example/l10n/translations/fr_fr_app_translation.dart';
import 'package:l18n_example/l10n/translations/pt_br_app_translation.dart';

class AppL10n {
  static final _resources = [
    PtBrAppTranslation(),
    EnUsAppTranslation(),
    FrFrAppTranslation(),
    EsMxAppTranslation(),
  ];

  static List<Locale> get supportedLocales =>
      _resources.map((translation) => translation.locale).toList();

  static Locale get defaultLocale => supportedLocales.first;

  static AppTranslation of(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return _resources.firstWhere(
      (l10n) =>
          l10n.locale == locale ||
          l10n.locale.languageCode == locale.languageCode,
      orElse: () => _resources.first,
    );
  }
}
