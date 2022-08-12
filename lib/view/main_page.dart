import 'package:flutter/material.dart';
import 'package:loginapp/view/course.dart';
import 'package:loginapp/view/home_screen.dart';
import 'package:loginapp/view/myid_card.dart';
import 'package:loginapp/view/profile.dart';
import 'package:loginapp/view/test_category.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  List pages = [
    HomeScreen(),
    NinjaCard(),
    Course(),
    Test_category(),
    Profile(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.grey[200],
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey[700],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_add_alt_1_sharp),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.school_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.bar_chart_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
