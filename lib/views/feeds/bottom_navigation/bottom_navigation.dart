import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/feed_page.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/search.dart';
import 'package:skilled_app/views/quiz/search_screen.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../eventCalander/event_page_for_month.dart';
import '../../forum/forum.dart';
import '../../settings/settingPage.dart';

List<Widget> discoverTabPages = [
  Search(),
  const SearchSuggestionScreen(
    isForDiscoverTab: true,
  ),
];

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
    final NavController _navController = Get.find();
    _navController.updateDiscoverIndex(0);
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
      resizeToAvoidBottomInset: false,
      body: Row(children: [
        Container(
            height: double.infinity,
            width: Get.width * 0.1,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _CustomBtmNavItem(
                    label: 'Home',
                    isSelected: _currentIndex == 0,
                    iconPath: _currentIndex == 0
                        ? 'assets/Polygon 2.png'
                        : 'assets/Polygon 1.png',
                    onTap: () {
                      _updateIndex(0);
                    }),
                _CustomBtmNavItem(
                    label: 'Discover',
                    isSelected: _currentIndex == 1,
                    iconPath: _currentIndex == 1
                        ? 'assets/icons/search-filled.png'
                        : 'assets/Search.png',
                    onTap: () {
                      _updateIndex(1);
                    }),
                _CustomBtmNavItem(
                    label: 'Forum',
                    isSelected: _currentIndex == 2,
                    iconPath: _currentIndex == 2
                        ? 'assets/layersS.png'
                        : 'assets/layers.png',
                    onTap: () {
                      _updateIndex(2);
                    }),
                _CustomBtmNavItem(
                    label: 'Calendar',
                    isSelected: _currentIndex == 3,
                    iconPath: _currentIndex == 3
                        ? 'assets/CalenderS.png'
                        : 'assets/Calender.png',
                    onTap: () {
                      _updateIndex(3);
                    }),
                _CustomBtmNavItem(
                    label: 'Settings',
                    isSelected: _currentIndex == 4,
                    iconPath: _currentIndex == 4
                        ? 'assets/SettingS.png'
                        : 'assets/Setting.png',
                    onTap: () {
                      _updateIndex(4);
                    }),
                const SizedBox(
                  height: 54,
                ),
              ],
            )),
        Expanded(
          child: GetBuilder<NavController>(
            init: NavController(),
            builder: (value) {
              if (_currentIndex == 1) {
                return discoverTabPages[value.discoverIndex];
              }
              return _screens[_currentIndex];
            },
          ),
        )
      ]),
    );
  }
}

class _CustomBtmNavItem extends StatelessWidget {
  const _CustomBtmNavItem({
    Key? key,
    required this.label,
    required this.iconPath,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final String label, iconPath;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width: 60,
        height: 60,
        padding: const EdgeInsets.only(top: 8),
        margin: const EdgeInsets.only(bottom: 28),
        child: Column(
          children: [
            Image.asset(iconPath, height: 24),
            if (isSelected)
              const SizedBox(
                height: 6,
              ),
            if (isSelected)
              Container(
                height: 6,
                width: 6,
                decoration: const BoxDecoration(
                  color: Color(0xFF497BC4),
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
