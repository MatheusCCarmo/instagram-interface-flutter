import 'package:flutter/material.dart';

class ProfilePanelButton extends StatelessWidget {
  String buttonTitle;
  double screenWidth;

  ProfilePanelButton(this.buttonTitle);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: Container(
        width: screenWidth / 3 - 13,
        padding: EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black26),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
