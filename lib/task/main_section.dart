import 'package:flutter/material.dart';

Widget mainSection() {
  return Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 5, left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network('https://picsum.photos/40'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ameo Paris", style: TextStyle(fontSize: 12)),
            Text("data", style: TextStyle(fontSize: 12)),
          ],
        ),
        SizedBox(width: 220),
        Icon(Icons.more_horiz),
      ],
    ),
  );
}

Widget mainBody() {
  final PageController pageController = PageController();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 400,
        child: PageView(
          controller: pageController,
          children: <Widget>[
            Image.network('https://picsum.photos/400'),
            Image.network('https://picsum.photos/430'),
            Image.network('https://picsum.photos/500'),
            SizedBox(height: 60),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 10),
                Image.asset('assets/images/image.png', width: 22),
                SizedBox(width: 14),
                Transform.rotate(angle: 5.8, child: Icon(Icons.send_outlined)),
              ],
            ),
            Image.asset('assets/images/image3.png', width: 20),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("88 likes"),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "manzarauz ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text:
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                ],
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}
