import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';

import '../../utils/app_colors.dart';
import '../eventCalander/events_screen.dart';
import '../feeds/bottom_navigation/bottom_navigation.dart';
import '../feeds/bottom_navigation/feed_page.dart';
import '../feeds/bottom_navigation/search.dart';
import '../settings/settingPage.dart';
import 'forum.dart';

class BottomNavigation2 extends StatefulWidget {
  BottomNavigation2({Key? key, this.title}) : super(key: key);
  String? title;

  @override
  State<BottomNavigation2> createState() => _BottomNavigation2State();
}

class _BottomNavigation2State extends State<BottomNavigation2> {
  int _currentIndex = 2;
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
      Search(),
      PopularThread(title: widget.title),
      Events(),
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
