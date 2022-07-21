import 'package:get/get.dart';

class NavController extends GetxController {
  int discoverIndex = 0;

  void updateDiscoverIndex(int index) {
    discoverIndex = index;
    update();
  }
}
