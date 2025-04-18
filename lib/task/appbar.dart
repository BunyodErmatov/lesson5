import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/image1.png', width: 120),
        Row(
          children: [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 15),
            Icon(Icons.favorite_border),
            SizedBox(width: 15),
            Transform.rotate(angle: 5.7, child: Icon(Icons.send_outlined)),
          ],
        ),
      ],
    ),
  );
}
