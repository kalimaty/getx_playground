import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': 'logged in as @name \n email @email',
        },
        'es_ES': {
          'hello': 'Hola Mundo',
          'logged_in': 'iniciado sesión como @name \n e-mail @email',
        }
      };
}
