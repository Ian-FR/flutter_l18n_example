import 'package:flutter/material.dart';
import 'package:l18n_example/home/home_translation.dart';
import 'package:l18n_example/home/translations/pt_br_home_translation.dart';
import 'package:l18n_example/l10n/app_translation.dart';

class PtBrAppTranslation extends AppTranslation {
  @override
  Locale get locale => const Locale('pt', 'BR');

  @override
  HomeTranslation get homeTranslation => PtBrHomeTranslation();
}
