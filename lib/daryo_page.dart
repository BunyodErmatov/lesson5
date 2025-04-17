import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/sport_page.dart';

class DaryoPage extends StatelessWidget {
  const DaryoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daryo"),
          backgroundColor: Colors.blue,
          bottom: const TabBar(
            labelColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(child: Icon(Icons.category)),
              Tab(child: Text("ikkinchi sahifa sahifa")),
              Tab(child: Text("uchinchi uchinchi uchinchi")),
            ],
          ),
        ),

        body: TabBarView(
          children: [SportPage(), Text("Mahalliy"), Text("Dunyo")],
        ),
      ),
    );
  }

  //   PreferredSizeWidget myTabbar() {
  //     return PreferredSize(
  //       preferredSize: Size.fromHeight(48),
  //       child: Container(
  //         color: Colors.white,
  //         child:
  //       ),
  //     );
  //   }
}
