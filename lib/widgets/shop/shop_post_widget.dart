import 'package:flutter/material.dart';

class ShopPostWidget extends StatelessWidget {
  String shopName;
  String subtitle;
  double screenWidth;

  ShopPostWidget(this.shopName, this.subtitle);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return GridTile(
      header: Container(
        margin: EdgeInsets.only(left: 12, top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 25,
              child: ClipOval(
                child: Image.network(
                    'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Expanded(
                child: Text(
                  shopName.length < 18
                      ? shopName
                      : shopName.substring(0, 15) + '...',
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            height: (screenWidth - 35) / 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              subtitle.length < 25
                  ? subtitle
                  : subtitle.substring(0, 22) + '...',
              style: TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
