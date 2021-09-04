import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello, world %s',
        },
        'en_US': {
          'title': 'Hello, world from US',
        },
        'pt': {
          'title': 'Ola de Portugal',
        },
        'pt_BR': {
          'title': 'Ola do Brasil',
        },
      };
}
