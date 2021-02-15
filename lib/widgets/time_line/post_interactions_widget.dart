import 'package:flutter/material.dart';

class PostInteractionsWidget extends StatelessWidget {
  Widget someonesComment(String author, String comment, BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: author, style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' ' + comment),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(text: 'liked by '),
                TextSpan(
                    text: 'userWhoLiked',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' and'),
                TextSpan(
                    text: ' others.',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          someonesComment('username', 'just me!', context),
          SizedBox(
            height: 4,
          ),
          Text(
            'View all 331 comments',
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: 4,
          ),
          someonesComment('Fulano', 'YOU ROCK!!', context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '4 minutes ago',
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text('.'),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'See Translation',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
