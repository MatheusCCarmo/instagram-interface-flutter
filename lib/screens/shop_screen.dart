import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  Widget shopScreenPost() {
    return GridTile(
      child: Container(
        color: Colors.red,
      ),
    );
  }

  Widget shopSugestionWidget(String sugestion) {
    return Container(
      child: Text(sugestion),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.collections_bookmark_outlined),
                  SizedBox(width: 10),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 35,
          margin: EdgeInsets.symmetric(horizontal: 12),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints.tight(Size(35, 30)),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black26,
                size: 20,
              ),
              labelText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                shopSugestionWidget('Browse Shops'),
                shopSugestionWidget('See Editors\' Pick'),
                shopSugestionWidget('Shop Collections'),
                shopSugestionWidget('Explore Guides'),
                shopSugestionWidget('Watch and Shop'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 0.6,
            crossAxisSpacing: 0.6,
            children: [
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
              shopScreenPost(),
            ],
          ),
        )
      ],
    );
    ;
  }
}
