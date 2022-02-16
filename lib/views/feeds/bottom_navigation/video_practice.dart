// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:video_player/video_player.dart';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     _tabController = TabController(length: items.length, vsync: this);
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _tabController!.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return getBody();
//   }

//   Widget getBody() {
//     var size = MediaQuery.of(context).size;
//     return RotatedBox(
//       quarterTurns: 1,
//       child: TabBarView(
//         controller: _tabController,
//         children: List.generate(items.length, (index) {
//           return VideoPlayerItem(
//             videoUrl: items[index]['videoUrl'],
//             size: size,
//             name: items[index]['name'],
//             dateTime: items[index]['dateTime'],
//             songName: items[index]['songName'],
//             profileImg: items[index]['profileImg'],
//             likes: items[index]['likes'],
//             comments: items[index]['comments'],
//             shares: items[index]['shares'],
//             albumImg: items[index]['albumImg'],
//           );
//         }),
//       ),
//     );
//   }
// }

// class VideoPlayerItem extends StatefulWidget {
//   final String? videoUrl;
//   final String? name;
//   final DateTime? dateTime;
//   final String? songName;
//   final String? profileImg;
//   final String? likes;
//   final String? comments;
//   final String? shares;
//   final String? albumImg;
//   VideoPlayerItem(
//       {Key? key,
//       required this.size,
//       this.name,
//       this.dateTime,
//       this.songName,
//       this.profileImg,
//       this.likes,
//       this.comments,
//       this.shares,
//       this.albumImg,
//       this.videoUrl})
//       : super(key: key);

//   final Size size;

//   @override
//   _VideoPlayerItemState createState() => _VideoPlayerItemState();
// }

// class _VideoPlayerItemState extends State<VideoPlayerItem> {
//   VideoPlayerController? _videoController;
//   bool isShowPlaying = false;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _videoController = VideoPlayerController.asset(
//         'WhatsApp Video 2022-02-12 at 5.30.59 PM.mp4')
//       ..initialize().then((value) {
//         _videoController!.play();
//         setState(() {
//           isShowPlaying = false;
//         });
//       });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _videoController!.dispose();
//   }

//   Widget isPlaying() {
//     return _videoController!.value.isPlaying && !isShowPlaying
//         ? Container()
//         : Icon(
//             Icons.play_arrow,
//             size: 80,
//             color: Colors.white.withOpacity(0.5),
//           );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           _videoController!.value.isPlaying
//               ? _videoController!.pause()
//               : _videoController!.play();
//         });
//       },
//       child: RotatedBox(
//         quarterTurns: -1,
//         child: Container(
//             height: widget.size.height,
//             width: widget.size.width,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   height: widget.size.height,
//                   width: widget.size.width,
//                   decoration: BoxDecoration(color: Colors.black),
//                   child: Stack(
//                     children: <Widget>[
//                       VideoPlayer(_videoController!),
//                       Center(
//                         child: Container(
//                           decoration: BoxDecoration(),
//                           child: isPlaying(),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: widget.size.height,
//                   width: widget.size.width,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 15, top: 20, bottom: 10),
//                     child: SafeArea(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           // HeaderHomePage(),
//                           Expanded(
//                               child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: <Widget>[
//                               Container(
//                                 margin: EdgeInsets.only(bottom: 20),
//                                 height: 36,
//                                 width: 36,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   border: Border.all(
//                                     width: 1,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                               LeftPanel(
//                                 size: widget.size,
//                                 name: "${widget.name}",
//                                 dateTime: widget.dateTime,
//                               ),
//                               RightPanel(
//                                 size: widget.size,
//                                 likes: "${widget.likes}",
//                                 comments: "${widget.comments}",
//                                 shares: "${widget.shares}",
//                                 profileImg: "${widget.profileImg}",
//                                 albumImg: "${widget.albumImg}",
//                               )
//                             ],
//                           ))
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }

// class RightPanel extends StatelessWidget {
//   final String? likes;
//   final String? comments;
//   final String? shares;
//   final String? profileImg;
//   final String? albumImg;
//   const RightPanel({
//     Key? key,
//     required this.size,
//     this.likes,
//     this.comments,
//     this.shares,
//     this.profileImg,
//     this.albumImg,
//   }) : super(key: key);
//   final Size size;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         height: size.height,
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: size.height * 0.3,
//             ),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   getProfile(profileImg),
//                   getIcons(TikTokIcons.heart, likes, 35.0),
//                   getIcons(TikTokIcons.chat_bubble, comments, 35.0),
//                   getIcons(TikTokIcons.reply, shares, 25.0),
//                   getAlbum(albumImg)
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// List items = [
//   {
//     "videoUrl": "assets/videos/video_1.mp4",
//     "name": "Vannak Niza🦋",
//     "dateTime": DateTime.now(),
//     "songName": "original sound - Łÿ Pîkâ Ćhûû",
//     "profileImg":
//         "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
//     "likes": "1.5M",
//     "comments": "18.9K",
//     "shares": "80K",
//     "albumImg":
//         "https://images.unsplash.com/photo-1502982899975-893c9cf39028?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
//   },
//   {
//     "videoUrl": "assets/videos/video_2.mp4",
//     "name": "Dara Chamroeun",
//     "caption": "Oops 🙊 #fyp #cambodiatiktok",
//     "songName": "original sound - 💛💛Khantana 🌟",
//     "profileImg":
//         "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/ba13e655825553a46b1913705e3a8617.jpeg",
//     "likes": "4.4K",
//     "comments": "5.2K",
//     "shares": "100",
//     "albumImg":
//         "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
//   },
//   {
//     "videoUrl": "assets/videos/video_3.mp4",
//     "name": "9999womenfashion",
//     "caption": "#블루모드",
//     "songName": "original sound - 🖤Khün MÄk🇰🇭",
//     "profileImg":
//         "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1664576339652610.jpeg",
//     "likes": "100K",
//     "comments": "10K",
//     "shares": "8.5K",
//     "albumImg":
//         "https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
//   },
// ];
// Widget getAlbum(albumImg) {
//   return Container(
//     width: 50,
//     height: 50,
//     decoration: BoxDecoration(
//         // shape: BoxShape.circle,
//         // color: black
//         ),
//     child: Stack(
//       children: <Widget>[
//         Container(
//           width: 50,
//           height: 50,
//           decoration:
//               BoxDecoration(shape: BoxShape.circle, color: Colors.black),
//         ),
//         Center(
//           child: Container(
//             width: 30,
//             height: 30,
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                     image: NetworkImage(albumImg), fit: BoxFit.cover)),
//           ),
//         )
//       ],
//     ),
//   );
// }

// Widget getIcons(icon, count, size) {
//   return Container(
//     child: Column(
//       children: <Widget>[
//         Icon(icon, color: Colors.white, size: size),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           count,
//           style: TextStyle(
//               color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
//         )
//       ],
//     ),
//   );
// }

// Widget getProfile(img) {
//   return Container(
//     width: 50,
//     height: 60,
//     child: Stack(
//       children: <Widget>[
//         Container(
//           width: 50,
//           height: 50,
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.white),
//               shape: BoxShape.circle,
//               image:
//                   DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
//         ),
//         Positioned(
//             bottom: 3,
//             left: 18,
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration:
//                   BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
//               child: Center(
//                   child: Icon(
//                 Icons.add,
//                 color: Colors.white,
//                 size: 15,
//               )),
//             ))
//       ],
//     ),
//   );
// }

// class UploadIcon extends StatelessWidget {
//   const UploadIcon({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 35,
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 0,
//             child: Container(
//               width: 40,
//               height: 35,
//               decoration: BoxDecoration(
//                   color: Colors.black, borderRadius: BorderRadius.circular(8)),
//             ),
//           ),
//           Positioned(
//             right: 0,
//             child: Container(
//               width: 40,
//               height: 35,
//               decoration: BoxDecoration(
//                   color: Colors.amber, borderRadius: BorderRadius.circular(8)),
//             ),
//           ),
//           Positioned(
//             right: 5,
//             child: Container(
//               width: 40,
//               height: 35,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(8)),
//               child: Icon(Icons.add),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class TikTokIcons {
//   TikTokIcons._();
//   static const _fontFamily = 'TikTokIcons';
//   static const IconData chat_bubble =
//       const IconData(0xe808, fontFamily: _fontFamily);
//   static const IconData create =
//       const IconData(0xe809, fontFamily: _fontFamily);
//   static const IconData heart = const IconData(0xe80a, fontFamily: _fontFamily);
//   static const IconData home = const IconData(0xe80b, fontFamily: _fontFamily);
//   static const IconData messages =
//       const IconData(0xe80c, fontFamily: _fontFamily);
//   static const IconData profile =
//       const IconData(0xe80d, fontFamily: _fontFamily);
//   static const IconData reply = const IconData(0xe80e, fontFamily: _fontFamily);
//   static const IconData search =
//       const IconData(0xe80f, fontFamily: _fontFamily);
// }

// class HeaderHomePage extends StatelessWidget {
//   HeaderHomePage({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "Following",
//           style: TextStyle(
//             color: Colors.white.withOpacity(0.7),
//             fontSize: 16,
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         Text(
//           "|",
//           style: TextStyle(
//             color: Colors.white.withOpacity(0.3),
//             fontSize: 17,
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         Text(
//           "For You",
//           style: TextStyle(
//               color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
//         )
//       ],
//     );
//   }
// }

// class LeftPanel extends StatelessWidget {
//   final String? name;
//   final DateTime? dateTime;

//   const LeftPanel({
//     Key? key,
//     @required this.size,
//     this.name,
//     this.dateTime,
//   }) : super(key: key);

//   final Size? size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 10),
//       width: size!.width * 0.8,
//       height: size!.height,
//       decoration: BoxDecoration(),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             name!,
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//           Text(
//             dateTime.toString(),
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     );
//   }
// }
