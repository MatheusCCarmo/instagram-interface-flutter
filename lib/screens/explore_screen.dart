import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  Widget exploreSugestionWidget(String sugestion) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          sugestion,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      onTap: () {},
    );
  }

  Widget exploreScreenPost() {
    return GridTile(
      child: GestureDetector(
        child: Image.network(
            'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: MediaQuery.of(context).size.width - 75,
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
                exploreSugestionWidget('IGTV'),
                exploreSugestionWidget('Travel'),
                exploreSugestionWidget('Architecture'),
                exploreSugestionWidget('Decor'),
                exploreSugestionWidget('Style'),
                exploreSugestionWidget('Food'),
                exploreSugestionWidget('Art'),
                exploreSugestionWidget('DIY'),
                exploreSugestionWidget('Beauty'),
                exploreSugestionWidget('Music'),
                exploreSugestionWidget('TV & Movies'),
                exploreSugestionWidget('Sports'),
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
              children: List.generate(15, (index) => exploreScreenPost())),
        )
      ],
    );
  }
}
