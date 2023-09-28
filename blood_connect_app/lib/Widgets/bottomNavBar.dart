// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  final Function manageSelectedIndex;
  BottomNavBar({required this.manageSelectedIndex});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.h),
            color: Color(0xFFFF646D),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              backgroundColor: Color(0xFFFF646D),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF82253B), //Colors.blueGrey,
              haptic: true, // haptic feedback
              tabBorderRadius: 40.r,
              curve: Curves.easeInOutCubic, // tab animation curves
              iconSize: 25.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),

              tabs: [
                GButton(icon: Icons.home),
                GButton(icon: Icons.bar_chart),
                GButton(icon: Icons.receipt),
                GButton(icon: Icons.person),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  widget.manageSelectedIndex(index);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
