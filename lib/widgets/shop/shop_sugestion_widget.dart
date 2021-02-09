import 'package:flutter/material.dart';

class ShopSugestionWidget extends StatelessWidget {
  String sugestion;

  ShopSugestionWidget(this.sugestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 162,
      margin: EdgeInsets.only(right: 8, top: 15),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: Row(
        children: [
          if (sugestion == 'See Editors\' Pick')
            ClipOval(
              child: Image.network(
                  'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
            ),
          if (sugestion == 'Browse Shops')
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 30,
                  child: ClipOval(
                    child: Image.network(
                        'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  height: 30,
                  child: ClipOval(
                    child: Image.network(
                        'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
                  ),
                ),
              ],
            ),
          if (sugestion != 'See Editors\' Pick' && sugestion != 'Browse Shops')
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                  'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
            ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              sugestion,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
