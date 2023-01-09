import 'package:flutter/material.dart';
import 'package:l18n_example/home/home_translation.dart';

abstract class AppTranslation {
  Locale get locale;
  HomeTranslation get homeTranslation;
}
