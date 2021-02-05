import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  Widget shopScreenPost() {
    return GridTile(
      header: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              child: ClipOval(
                child: Image.network(
                    'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Text(
                'teste',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: EdgeInsets.all(5),
          color: Colors.black,
        ),
      ),
    );
  }

  Widget shopSugestionWidget(String sugestion) {
    return Container(
      height: 60,
      width: 160,
      margin: EdgeInsets.only(right: 10, top: 10),
      padding: EdgeInsets.all(10),
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
            childAspectRatio: 0.9,
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
