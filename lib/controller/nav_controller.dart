import 'package:get/get.dart';

class NavController extends GetxController {
  int discoverIndex = 0;
  int forumIndex = 0;

  void updateDiscoverIndex(int index) {
    discoverIndex = index;
    update();
  }

  void updateForumIndex(int index) {
    forumIndex = index;
    update();
  }
}
