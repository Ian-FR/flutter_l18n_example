import 'package:l18n_example/home/home_translation.dart';

class EsMxHomeTranslation extends HomeTranslation {
  @override
  String get title => '¿Como tu te llamas?';

  @override
  String get greetButtonLabel => 'Saludar';

  @override
  String hello(name) => 'Hola $name!';
}
