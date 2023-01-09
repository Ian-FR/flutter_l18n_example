import 'package:flutter/material.dart';
import 'package:l18n_example/home/home_translation.dart';
import 'package:l18n_example/home/translations/en_us_home_translation.dart';
import 'package:l18n_example/l10n/app_translation.dart';

class EnUsAppTranslation extends AppTranslation {
  @override
  Locale get locale => const Locale('en', 'US');

  @override
  HomeTranslation get homeTranslation => EnUsHomeTranslation();
}
