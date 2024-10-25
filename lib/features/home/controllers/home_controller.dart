import 'package:get/get.dart';

class HomeController extends GetxController {
  /// index indicator for place and event
  var indexIndicatorPlace = 0.obs;
  var indexIndicatorEvent = 0.obs;

  /// data for place and event
  var dataPlace = [
    {
      "image": 'assets/images/ancol.png',
      "title": "place_1",
    },
    {
      "image": 'assets/images/monumen.png',
      "title": "place_2",
    },
    {
      "image": 'assets/images/monas.png',
      "title": "place_3",
    },
  ];
  var dataEvent = [
    {"image": 'assets/images/event1.png'},
    {"image": 'assets/images/event2.png'},
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
