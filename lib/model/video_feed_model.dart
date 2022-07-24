class VideoFeedModle {
  String? image;
  String? title;
  DateTime? dateTime;
  int? likes;
  double? shares;
  String? bgImage;
  String? pause;
  String? videoPath;
  VideoFeedModle({
    this.videoPath,
    this.pause,
    this.dateTime,
    this.image,
    this.likes = 0,
    this.shares,
    this.title,
    this.bgImage,
  });
}
