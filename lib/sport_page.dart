import 'package:flutter/material.dart';

class SportPage extends StatelessWidget {
  const SportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text("Sport Yangiliklari", style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
