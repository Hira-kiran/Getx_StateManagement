import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations {
  // just click on language , the override part is by default visible
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {"message": "Whats your name", "name": "Hira kiran"},
        "ur_PK": {"message": "آپ کا نام کیا ہے", "name": "ہیرا کرن"},
      };
}
