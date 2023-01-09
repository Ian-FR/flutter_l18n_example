import 'package:l18n_example/home/home_translation.dart';

class FrFrHomeTranslation extends HomeTranslation {
  @override
  String get title => 'Quel est votre nom?';

  @override
  String get greetButtonLabel => 'Saluer';

  @override
  String hello(name) => 'Bonjuor $name!';
}
