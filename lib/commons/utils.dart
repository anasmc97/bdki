import 'package:bdki_project_test/commons/translation/en.dart';
import 'package:bdki_project_test/commons/translation/id.dart';
import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'id_ID': id,
      };
}
