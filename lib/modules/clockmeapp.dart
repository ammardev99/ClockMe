import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:clockme/modules/scan/view.dart';
import 'package:flutter/material.dart';

class ClockMeApp extends StatefulWidget {
  const ClockMeApp({super.key});

  @override
  State<ClockMeApp> createState() => _ClockMeAppState();
}

class _ClockMeAppState extends State<ClockMeApp> {
  Color primaryColor = const Color(0xFFEB5454);
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.person_4_outlined,
    Icons.history,
    Icons.person_2_outlined,
  ];
  int _bottomNavIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScanPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _bottomNavIndex = -1;
            });
          },
          mini: true,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeColor: primaryColor,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
    );
  }
}
