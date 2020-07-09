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
          _buildText('Curtido por Fulano e outras pessoas'),
          _buildText('Fulano É O AUGE'),
          _buildText('Ver todos os 281 comentários'),
          Row(
            children: <Widget>[
              _buildText('Há 6 horas'),
              _buildText('Ver tradução')
            ],
          ),
        ],
      ),
    );
  }
}
