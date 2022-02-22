// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../feeds/bottom_navigation/bottom_navigation.dart';
// class Jobs extends StatefulWidget {
//   @override
//   _JobsState createState() => _JobsState();
// }

// class _JobsState extends State<Jobs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Available Jobs",style: TextStyle(color: Colors.black),),
//         leading: Icon(Icons.clear,color: Colors.black),
//         backgroundColor: Colors.white70,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: Get.height*0.06),
//             Padding(
//               padding: const EdgeInsets.only(right: 45),
//               child: Text("“UX Designer” job post near me",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             ),
//             SizedBox(height: Get.height*0.03),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Image.asset("assets/images/Group@2x.png"),
//                     )
//                   ],
//                 ),
//                 SizedBox(width: Get.width*0.06),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Lead UX Designer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("Snapdocs",style: TextStyle(fontSize: 16),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("United States",style: TextStyle(fontSize: 17,color: Colors.grey.withOpacity(0.9)),),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: Get.height*0.03),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Image.asset("assets/images/Group@2x.png"),
//                     )
//                   ],
//                 ),
//                 SizedBox(width: Get.width*0.06),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Lead UX Designer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("Snapdocs",style: TextStyle(fontSize: 16),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("United States",style: TextStyle(fontSize: 17,color: Colors.grey.withOpacity(0.9)),),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: Get.height*0.03),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Image.asset("assets/images/Group@2x.png"),
//                     )
//                   ],
//                 ),
//                 SizedBox(width: Get.width*0.06),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Lead UX Designer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("Snapdocs",style: TextStyle(fontSize: 16),),
//                     SizedBox(height: Get.height*0.01),
//                     Text("United States",style: TextStyle(fontSize: 17,color: Colors.grey.withOpacity(0.9)),),
//                   ],
//                 )
//               ],
//             ),
//           SizedBox(
//             height: Get.height*0.03,
//           ),

//           Container(
//             width: Get.width*0.35,
//             height: Get.height*0.06,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(30)
//             ),
//             child: Center(child: Text("See more 30+")),
//           ),
//             SizedBox(height: Get.height*0.02),
//             Padding(
//               padding: const EdgeInsets.only(right: 143),
//               child: Text("What’s my career list",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
//             ),
//             SizedBox(height: Get.height*0.02),
//             Padding(
//               padding: const EdgeInsets.only(left: 22,right: 22),
//               child: Text("It is a list of careers you are interested in learning more about. Based off this list, Skilld’s algorithm creates you a personalised feed (including podcasts,   books, videos, competitions etc.) that allow you to learn about different industries, and how to get be successful in that job."),
//             ),
//             SizedBox(
//               height: Get.height*0.03,
//             ),
//             InkWell(
//               onTap: (){

//                 Get.to(()=> BottomNavigation());
//               },
//               child: Container(
//                 width: Get.width*0.9,
//                 height: Get.height*0.09,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Color(0xffFBC799)
//                 ),
//                 child: Center(child: Text("ADD TO CARRER LIST",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
//               ),
//             ),
//             SizedBox(height: Get.height*0.01),
//             Row(
//               children: [
//                 SizedBox(width: Get.width*0.25),
//                 Icon(Icons.arrow_back_ios),
//                 Text("BACK TO CAREER",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
