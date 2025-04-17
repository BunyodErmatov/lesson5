import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/sport_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  int _selectedPage = 0;

  final _pages = [
    SportPage(),
    Text("data"),
    Text("uchinchi"),
    Text("to'rtinchi"),
    Text("beshinchi"),
    Text("oltinchi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lesson 5")),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'first'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'second'),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'third'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'four'),
          BottomNavigationBarItem(
            icon: Icon(Icons.snowshoeing_outlined),
            label: 'five',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.time_to_leave),
            label: 'five',
          ),
        ],
      ),
    );
  }
}
