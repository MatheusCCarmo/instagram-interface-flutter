import 'package:flutter/material.dart';

class StorieWidget extends StatefulWidget {
  @override
  _StorieWidgetState createState() => _StorieWidgetState();
}

class _StorieWidgetState extends State<StorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.pink[700], Colors.orange[200]],
              tileMode: TileMode.clamp,
            ),
          ),
          child: ClipOval(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'username',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
