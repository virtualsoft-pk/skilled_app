import 'package:flutter/cupertino.dart';

class About {
  String image;
  String name;
  About({required this.name, required this.image});
}

class Choice {
  String name;
  String operator;
  Choice({required this.name, required this.operator});
}

class Design {
  String name;
  Design({
    required this.name,
  });
}

class Post {
  String? favoriteImage;
  String image;
  String name;
  String date;
  String desc;
  String desc2;
  String design;
  String dgn2;
  String design3;
  String heart;
  int count;
  String message;
  String number;
  Color color;
  Post({
    this.favoriteImage,
    required this.color,
    required this.number,
    required this.message,
    required this.count,
    required this.heart,
    required this.dgn2,
    required this.design3,
    required this.design,
    required this.name,
    required this.image,
    required this.desc,
    required this.date,
    required this.desc2,
  });
}
