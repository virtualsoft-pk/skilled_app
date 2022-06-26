import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/splash_screen.dart';

import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:skilled_app/views/onboarding/onboarding.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Home());
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<String> suggestons = [
//     "USA",
//     "UK",
//     "Uganda",
//     "Uruguay",
//     "United Arab Emirates"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("Autocomplete on TextField"),
//             backgroundColor: Colors.redAccent),
//         body: Container(
//           margin: EdgeInsets.all(30),
//           alignment: Alignment.topCenter,
//           child: Column(
//             children: [
//               TypeAheadField(
//                 animationStart: 0,
//                 animationDuration: Duration.zero,
//                 textFieldConfiguration: TextFieldConfiguration(
//                     autofocus: true,
//                     style: TextStyle(fontSize: 15),
//                     decoration: InputDecoration(border: OutlineInputBorder())),
//                 suggestionsBoxDecoration:
//                     SuggestionsBoxDecoration(color: Colors.lightBlue[50]),
//                 suggestionsCallback: (pattern) {
//                   List<String> matches = <String>[];
//                   matches.addAll(suggestons);

//                   matches.retainWhere((s) {
//                     return s.toLowerCase().contains(pattern.toLowerCase());
//                   });
//                   return matches;
//                 },
//                 itemBuilder: (context, sone) {
//                   return Card(
//                       child: Container(
//                     padding: EdgeInsets.all(10),
//                     child: Text(sone.toString()),
//                   ));
//                 },
//                 onSuggestionSelected: (suggestion) {
//                   print(suggestion);
//                 },
//               )
//             ],
//           ),
//         ));
//   }
// }
