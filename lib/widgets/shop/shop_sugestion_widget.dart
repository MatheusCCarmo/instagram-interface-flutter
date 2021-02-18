import 'package:flutter/material.dart';

class ShopSugestionWidget extends StatelessWidget {
  String sugestion;
  int sugestionIndex;

  ShopSugestionWidget(this.sugestion, this.sugestionIndex);

  @override
  Widget build(BuildContext context) {
    EdgeInsets insets;

    insets = EdgeInsets.only(right: 7, top: 15);

    if (sugestionIndex == 0) {
      insets = EdgeInsets.only(left: 15);
    } else if (sugestionIndex == 4) {
      insets = EdgeInsets.only(left: 6, right: 15);
    } else {
      insets = EdgeInsets.only(left: 6);
    }

    return Container(
      height: 54,
      width: 160,
      margin: insets,
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
