import 'package:flutter/material.dart';

class SwitchThemeButton extends StatefulWidget {
  @override
  _SwitchThemeButtonState createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Text('Dark Theme'),
        Switch.adaptive(
          value: isDarkTheme,
          onChanged: (newValue) {
            setState(() {
              isDarkTheme = newValue;
            });
            print('Dark Theme switch to $isDarkTheme');
            print('value: $newValue');
          },
        ),
      ]),
    );
  }
}
