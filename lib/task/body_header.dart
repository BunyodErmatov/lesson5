import 'package:flutter/material.dart';

Widget myHeader() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        width: 60,
        height: 60,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network('https://picsum.photos/200'),
            ),
            Positioned(
              right: -3,
              bottom: -3,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(0.5),
                child: Icon(Icons.add_circle, color: Colors.blue, size: 25),
              ),
            ),
          ],
        ),
      ),
      Text("Your history", style: TextStyle(fontSize: 12)),
    ],
  );
}

Widget header() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network('https://picsum.photos/200'),
        ),
      ),
      Padding(padding: EdgeInsets.only(left: 78)),
      SizedBox(height: 3),
      Text("history", style: TextStyle(fontSize: 12)),
    ],
  );
}
