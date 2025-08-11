import 'package:flutter/material.dart';
import 'package:to_do_task/Pages/calender_page.dart';
import 'package:to_do_task/Pages/focus_page.dart';
import 'package:to_do_task/Pages/home_page.dart';
import 'package:to_do_task/Pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    CalenderPage(),
    FocusPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF363636),
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset(
                "assets/images/index.png",
                color: Colors.white,
                height: 30,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset(
                "assets/images/calendar.png",
                color: Colors.white,
                height: 30,
              ),
            ),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset(
                "assets/images/clock-five.png",
                color: Colors.white,
                height: 30,
              ),
            ),
            label: "focus",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset(
                "assets/images/user.png",
                color: Colors.white,
                height: 30,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
