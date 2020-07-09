import 'package:flutter/material.dart';
import 'package:instagram/widgets/actions_widget.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Name'), Icon(Icons.more_vert)],
        ),
        Image.asset(
          'assets/images/fulano.jpg',
        ),
        ActionsWidget(),
      ],
    );
  }
}
