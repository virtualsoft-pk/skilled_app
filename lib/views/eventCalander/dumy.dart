// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:swapi_flutter_app/utils/AppColors.dart';
// import 'package:swapi_flutter_app/utils/styles.dart';
// import 'package:swapi_flutter_app/views/card_tab/cardLinked/brands.dart';
// import 'package:swapi_flutter_app/views/card_tab/cardLinked/yourCards.dart';
// import 'package:swapi_flutter_app/views/card_tab/linkedCardInfo.dart';

// class CardLinked extends StatefulWidget {
//   @override
//   CardLinkedState createState() => CardLinkedState();
// }

// class _CardLinkedState extends State<CardLinked>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   _body() {
//     var screenHeight = MediaQuery.of(context).size.height;
//     var screenWidth = MediaQuery.of(context).size.width;
//     return NestedScrollView(
//       headerSliverBuilder: (context, value) {
//         return [
//           SliverToBoxAdapter(
//             child: Container(
//               height: screenHeight * 0.18,
//               width: screenWidth,
//               child: Stack(
//                 children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                       width: screenWidth / 3,
//                       child: Image.asset(
//                         "assets/images/dashes_tr.png",
//                         fit: BoxFit.cover,
//                         color: Colors.grey.withOpacity(0.3),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                       margin: EdgeInsets.only(top: 25, right: 20),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             PageTransition(
//                               type: PageTransitionType.bottomToTop,
//                               duration: Duration(milliseconds: 300),
//                               child: LinkedCardList(),
//                             ),
//                           );
//                         },
//                         child: Icon(
//                           Icons.info_outline,
//                           color: AppColors.darkFuchsia,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Container(
//                       margin: EdgeInsets.only(
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Cards linked",
//                         style: AppStyles.heading5TextStyleTitillum.copyWith(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 40,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Container(
//                     height: 40,
//                     width: screenWidth * 0.5,
//                     child: TabBar(
//                       controller: _tabController,
//                       indicatorSize: TabBarIndicatorSize.label,
//                       indicatorColor: AppColors.primaryColor,
//                       unselectedLabelColor: AppColors.darkPurple,
//                       indicatorWeight: 2.0,
//                       labelColor: AppColors.darkFuchsia,
//                       labelStyle:
//                           AppStyles.heading1TextStyleTitilliumWeb.copyWith(
//                         letterSpacing: 0,
//                         fontSize: 14,
//                       ),
//                       unselectedLabelStyle:
//                           AppStyles.normalStyleTilliumWeb.copyWith(
//                         letterSpacing: 0,
//                         fontSize: 14,
//                       ),
//                       tabs: [
//                         Tab(
//                           child: Container(
//                             margin: EdgeInsets.only(bottom: 8.0),
//                             child: Text(
//                               "Your cards",
//                             ),
//                           ),
//                         ),
//                         Tab(
//                           child: Container(
//                             margin: EdgeInsets.only(bottom: 8.0),
//                             child: Text(
//                               "Brands",
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ];
//       },
//       body: Container(
//         child: TabBarView(
//           controller: _tabController,
//           children: <Widget>[
//             YourCards(),
//             Brands(),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _body(),
//     );
//   }
// }