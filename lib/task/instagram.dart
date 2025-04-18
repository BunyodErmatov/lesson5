import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/task/appbar.dart';
import 'package:flutter_lesson_5/task/body_header.dart';
import 'package:flutter_lesson_5/task/main_section.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _selectedPage = 0;

  final _pages = [
    Column(
      children: [
        mainSection(),
        mainBody(),
        mainSection(),
        mainBody(),
        mainSection(),
        mainBody(),
        mainSection(),
        mainBody(),
      ],
    ),
    Text("Search"),
    Text("Add media"),
    Text("Reels"),
    Text("My Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: ListView(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                myHeader(),
                header(),
                header(),
                header(),
                header(),
                header(),
                header(),
                header(),
                header(),
                header(),
                header(),
              ],
            ),
          ),

          Divider(),
          _pages[_selectedPage],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'search',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'send'),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera_front_outlined),
            label: 'send',
          ),
        ],
      ),
    );
  }
}
