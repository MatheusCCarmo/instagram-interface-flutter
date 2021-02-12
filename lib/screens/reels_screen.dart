import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.black,
          child: Container(),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              child: Text(
                'Reels',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
