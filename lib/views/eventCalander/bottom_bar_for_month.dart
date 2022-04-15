import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/event_page_for_month.dart';
import 'package:skilled_app/views/eventCalander/event_page_for_week.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/company_profile.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/search_result.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:skilled_app/widgets/month_calendar.dart';

import '../../utils/app_colors.dart';
import '../eventCalander/events_screen.dart';
import '../feeds/bottom_navigation/bottom_navigation.dart';
import '../feeds/bottom_navigation/feed_page.dart';
import '../feeds/bottom_navigation/search.dart';
import '../forum/forum.dart';
import '../settings/settingPage.dart';

class BottomNavigationForMonth extends StatefulWidget {
  BottomNavigationForMonth({Key? key}) : super(key: key);

  @override
  State<BottomNavigationForMonth> createState() =>
      _BottomNavigationForMonthState();
}

class _BottomNavigationForMonthState extends State<BottomNavigationForMonth> {
  int _currentIndex = 3;
  List _screens = [];
  void _updateIndex(int value) {
    Get.offAll(() => BottomNavigation(
          index: value,
        ));
    return;
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _screens = [
      FeedPage(),
      SearchResult(),
      Forum(),
      EventPageForMonth(),
      SettingScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: lightGrey,
        selectedItemColor: textColor,
        selectedFontSize: 11,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                _currentIndex == 0
                    ? 'assets/Polygon 2.png'
                    : 'assets/Polygon 1.png',
                fit: BoxFit.cover,
                height: 18,
              )),
          BottomNavigationBarItem(
            label: "Discover",
            icon: Image.asset(
              _currentIndex == 1
                  ? 'assets/icons/search-filled.png'
                  : 'assets/Search.png',
              height: 18,
            ),
          ),
          BottomNavigationBarItem(
            label: "Forum",
            icon: Image.asset(
              _currentIndex == 2 ? 'assets/layersS.png' : 'assets/layers.png',
              height: 18,
            ),
          ),
          BottomNavigationBarItem(
            label: "Calendar",
            icon: Image.asset(
              _currentIndex == 3
                  ? 'assets/CalenderS.png'
                  : 'assets/Calender.png',
              height: 18,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Image.asset(
              _currentIndex == 4 ? 'assets/SettingS.png' : 'assets/Setting.png',
              height: 18,
            ),
          )
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
