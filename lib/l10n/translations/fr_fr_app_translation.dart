import 'package:flutter/material.dart';
import 'package:l18n_example/home/home_translation.dart';
import 'package:l18n_example/home/translations/fr_fr_home_translation.dart';
import 'package:l18n_example/l10n/app_translation.dart';

class FrFrAppTranslation extends AppTranslation {
  @override
  Locale get locale => const Locale('fr', 'FR');

  @override
  HomeTranslation get homeTranslation => FrFrHomeTranslation();
}
