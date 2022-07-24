import 'package:get/get.dart';

class TagController extends GetxController {
  final List<String> postTags = [];
  final List<String> careerTags = [];

  void updateCareerTags(String tag) {
    if (careerTags.contains(tag) || careerTags.length >= 3) {
      return;
    }
    careerTags.add(tag);
    update();
  }

  void updatePostTags(String tag) {
    if (postTags.contains(tag) || postTags.length >= 3) {
      return;
    }
    postTags.add(tag);
    update();
  }
}
