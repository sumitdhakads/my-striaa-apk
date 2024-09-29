import 'package:flutter/material.dart';
import 'package:striaa/pages/Calendar.dart';
import 'package:striaa/pages/Exam1.dart';
import 'package:striaa/pages/HomePage.dart';
import 'package:striaa/pages/ProfilePage.dart';
import 'package:striaa/pages/SearchTwo.dart';
import 'package:striaa/pages/SearchPage.dart';
import 'package:striaa/pages/StriSquad.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class StriaaPage extends StatefulWidget {
  const StriaaPage({super.key});

  @override
  State<StriaaPage> createState() => _StriaaPageState();
}

class _StriaaPageState extends State<StriaaPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Homepage(),
    const SearchTwo(),
    const Calendar(),
    const MainStriSquad(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: ColorUtil.primaryColor, // Selected icon color
        unselectedItemColor: Colors.black,         // Unselected icon color
        backgroundColor: Colors.white,
        showSelectedLabels: false,    // Hide selected labels
        showUnselectedLabels: false,  // Hide unselected labels
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: ImageUtil.nav1,
              color: _currentIndex == 0 ? ColorUtil.primaryColor : Colors.black, // Dynamic color change
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: ImageUtil.nav2,
              color: _currentIndex == 1 ? ColorUtil.primaryColor : Colors.black, // Dynamic color change
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: ImageUtil.nav3,
              color: _currentIndex == 2 ? ColorUtil.primaryColor : Colors.black, // Dynamic color change
            ),
            label: "Loves",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: ImageUtil.nav4,
              color: _currentIndex == 3 ? ColorUtil.primaryColor : Colors.black, // Dynamic color change
            ),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: ImageUtil.nav5,
              color: _currentIndex == 4 ? ColorUtil.primaryColor : Colors.black, // Dynamic color change
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
