import 'package:l18n_example/home/home_translation.dart';

class PtBrHomeTranslation extends HomeTranslation {
  @override
  String get title => 'Como você se chama?';

  @override
  String get greetButtonLabel => 'Cumprimentar';

  @override
  String hello(name) => 'Olá $name!';
}
