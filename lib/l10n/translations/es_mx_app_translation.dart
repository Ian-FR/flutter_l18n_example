import 'package:flutter/material.dart';
import 'package:l18n_example/home/home_translation.dart';
import 'package:l18n_example/home/translations/es_mx_home_translation.dart';
import 'package:l18n_example/l10n/app_translation.dart';

class EsMxAppTranslation extends AppTranslation {
  @override
  Locale get locale => const Locale('es', 'MX');

  @override
  HomeTranslation get homeTranslation => EsMxHomeTranslation();
}
