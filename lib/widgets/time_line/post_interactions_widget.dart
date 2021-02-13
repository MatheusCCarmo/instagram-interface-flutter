import 'package:flutter/material.dart';

class PostInteractionsWidget extends StatelessWidget {
  Widget _buildText(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      child: Text(text),
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
          _buildText('Liked by Fulano and others'),
          _buildText('Fulano YOU ROCK!!'),
          _buildText('View all 331 comments'),
          Row(
            children: <Widget>[
              _buildText('4 minutes ago'),
              _buildText('See Translation')
            ],
          ),
        ],
      ),
    );
  }
}
