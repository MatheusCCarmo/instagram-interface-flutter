import 'package:flutter/material.dart';

class ProfilePanelButton extends StatelessWidget {
  String buttonTitle;

  ProfilePanelButton(
    this.buttonTitle,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
