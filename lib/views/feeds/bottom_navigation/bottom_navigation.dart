import 'package:flutter/material.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/feed_page.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/search.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../eventCalander/event_page_for_month.dart';
import '../../forum/forum.dart';
import '../../settings/settingPage.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key, this.index = 0}) : super(key: key);
  int? index;
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? _BottomNavMobile(
            index: index,
          )
        : _BottomNavTablet(
            index: index,
          );
  }
}

class _BottomNavMobile extends StatefulWidget {
  _BottomNavMobile({Key? key, this.index = 0}) : super(key: key);
  int? index;
  @override
  State<_BottomNavMobile> createState() => __BottomNavMobileState();
}

class __BottomNavMobileState extends State<_BottomNavMobile> {
  int _currentIndex = 0;
  final List _screens = [
    FeedPage(),
    Search(),
    Forum(),
    const EventPageForMonth(),

    // Events(),
    SettingScreen(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      _currentIndex = widget.index!;
      setState(() {});
    }
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
        selectedLabelStyle: const TextStyle(
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

class _BottomNavTablet extends StatefulWidget {
  _BottomNavTablet({Key? key, this.index = 0}) : super(key: key);
  int? index;
  @override
  State<_BottomNavTablet> createState() => __BottomNavTabletState();
}

class __BottomNavTabletState extends State<_BottomNavTablet> {
  int _currentIndex = 0;
  final List _screens = [
    FeedPage(),
    Search(),
    Forum(),
    const EventPageForMonth(),
    SettingScreen(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      _currentIndex = widget.index!;
      setState(() {});
    }
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
        selectedLabelStyle: const TextStyle(
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
      body: Row(children: [
        Container(height: double.infinity, width: 100, color: Colors.blue),
        Expanded(child: Placeholder())
      ]),
    );
  }
}
