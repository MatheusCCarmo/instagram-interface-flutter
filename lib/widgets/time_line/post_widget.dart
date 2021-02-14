import 'package:flutter/material.dart';
import 'package:instagram/widgets/time_line/post_actions_widget.dart';
import 'package:instagram/widgets/time_line/post_interactions_widget.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 18,
                  ),
                ),
                Text(
                  'username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.more_horiz,
                size: 24,
              ),
            )
          ],
        ),
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/fulano.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
        PostActionsWidget(),
        PostInteractionsWidget(),
      ],
    );
  }
}
