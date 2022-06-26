class FeedModel {
  String? profileImage;
  String? name;
  DateTime? dateTime;
  String? text;
  String? mainImage;
  String? website;
  String? websiteDesc;
  double? likes;
  int? shares;
  FeedModel({
    this.dateTime,
    this.likes,
    this.mainImage,
    this.name,
    this.profileImage,
    this.shares,
    this.text,
    this.website,
    this.websiteDesc,
  });
}

List<FeedModel> feedModel = [
  FeedModel(
    dateTime: DateTime.now(),
    likes: 14.3,
    mainImage: 'assets/unsplash_ooZ3a5k7GFQ.png',
    name: 'Skill Share',
    profileImage: 'assets/Ellipse 582.png',
    shares: 22,
    text: 'Just published: our list of the top 10 new UI/UX design course .',
    website: 'skillshare.com',
    websiteDesc: 'The top 10 new UI/UX design course .',
  ),
  FeedModel(
    dateTime: DateTime.now(),
    likes: 22.3,
    mainImage: 'assets/unsplash_LETdkk7wHQk.png',
    name: 'Evento',
    profileImage: 'assets/Ellipse 583.png',
    shares: 23,
    text: 'Just published: our list of the top 10 new UI/UX design course .',
    website: 'skillshare.com',
    websiteDesc: 'The top 10 new UI/UX design course .',
  ),
];
