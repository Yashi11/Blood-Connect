// ignore_for_file: file_names, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, constant_identifier_names

import 'package:blood_bridge/Screens/ScreenWidgets/OtherDocument.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/OtherStats.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/Stats.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/UploadDocument.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/bankHome.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/bankProfile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/userHome.dart';
import 'package:blood_bridge/Screens/ScreenWidgets/userProfile.dart';

import '../Widgets/BottomNavBar.dart';
import 'ScreenWidgets/hospitalHome.dart';
import 'ScreenWidgets/hospitalProfile.dart';

class MainScreen extends StatefulWidget {
  final User user;
  MainScreen({required this.user});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _manageSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String whoAreYou = "";
  void getUserData() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    final currentUserData =
        await FirebaseFirestore.instance.doc('users/' + uid!).get();

    whoAreYou = currentUserData['whoAreYou'];

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle TitleStyle = TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 25.sp,
        fontWeight: FontWeight.bold);

    List<String> TextList = [
      whoAreYou == 'User'
          ? "Hi, ${widget.user.displayName!.split(" ")[0]}!"
          : widget.user.displayName!,
      "Your Stats",
      "Blood Report",
      "Profile"
    ];
    List<Widget> _widgetOptions = whoAreYou == 'User'
        ? <Widget>[
            UserHome(),
            Stats(),
            UploadDocument(),
            UserProfile(
              user: widget.user,
            ),
          ]
        : whoAreYou == 'Hospital'
            ? <Widget>[
                HospitalHome(),
                OtherStats(),
                OtherDocument(),
                HospitalProfile(
                  user: widget.user,
                ),
              ]
            : whoAreYou == 'Blood Bank'
                ? <Widget>[
                    BankHome(),
                    OtherStats(),
                    OtherDocument(),
                    BankProfile(
                      user: widget.user,
                    ),
                  ]
                : <Widget>[
                    Center(child: CircularProgressIndicator()),
                    Center(child: CircularProgressIndicator()),
                  ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80.0, // Height doubled to 80
          title: Column(
            children: [
              SizedBox(height: 15),
              Text(
                TextList[_selectedIndex],
                style: TitleStyle,
              ),
            ],
          ),
          elevation: 0.8,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF82253B), Color(0xFFFF646D)],
                ),
              ),
            ),
          ),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar:
            BottomNavBar(manageSelectedIndex: _manageSelectedIndex),
      ),
    );
  }
}
