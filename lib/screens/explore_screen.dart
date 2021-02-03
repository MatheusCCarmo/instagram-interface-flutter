import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  Widget sugestionWidget(String sugestion) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 6),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(sugestion),
      ),
      onTap: () {},
    );
  }

  Widget exploreScreenPost() {
    return GridTile(
      child: GestureDetector(
        child: Container(
          color: Colors.red,
        ),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              width: MediaQuery.of(context).size.width - 70,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                  ),
                  labelText: 'Pesquisar',
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.filter_center_focus,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                sugestionWidget('IGTV'),
                sugestionWidget('Trips'),
                sugestionWidget('Architecture'),
                sugestionWidget('Decoration'),
                sugestionWidget('Style'),
                sugestionWidget('Food'),
                sugestionWidget('Art'),
                sugestionWidget('Beauty'),
                sugestionWidget('Music'),
                sugestionWidget('Sports'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 0.6,
            crossAxisSpacing: 0.6,
            children: [
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
              exploreScreenPost(),
            ],
          ),
        )
      ],
    );
  }
}
