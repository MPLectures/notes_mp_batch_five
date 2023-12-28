import 'package:flutter/material.dart';

class ScreenPageView extends StatelessWidget {

  List<Color> containerColor = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.teal,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) => Center(
          child: Container(
            height: 200,
            width: 200,
            color: containerColor[index],
          ),
        ),
      ),
    );
  }
}
