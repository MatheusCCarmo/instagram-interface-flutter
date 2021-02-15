import 'package:flutter/material.dart';

class PostInteractionsWidget extends StatelessWidget {
  Widget someonesComment(String author, String comment) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text(
            author,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 4,
          ),
          Text(comment),
        ],
      ),
    );
  }

  // Widget likesText(String userWhoLiked){
  //   return
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Liked by Fulano and others'),
          SizedBox(
            height: 4,
          ),
          someonesComment('username', 'just me!'),
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
          someonesComment('Fulano', 'YOU ROCK!!'),
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
