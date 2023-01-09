import 'package:l18n_example/home/home_translation.dart';

class EnUsHomeTranslation extends HomeTranslation {
  @override
  String get title => "What's your name?";

  @override
  String get greetButtonLabel => 'Greet';

  @override
  String hello(name) => 'Hello $name!';
}
