import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  List<String> sugestions = [
    'IGTV',
    'Travel',
    'Architecture',
    'Decor',
    'Style',
    'Food',
    'Art',
    'DIY',
    'Beauty',
    'Music',
    'TV & Movies',
    'Sports',
  ];

  Widget exploreSugestionWidget(int sugestionIndex) {
    EdgeInsets insets;

    if (sugestionIndex == 0) {
      insets = EdgeInsets.only(left: 15);
    } else if (sugestionIndex == sugestions.length - 1) {
      insets = EdgeInsets.only(left: 7.5, right: 15);
    } else {
      insets = EdgeInsets.only(left: 7.5);
    }

    return GestureDetector(
      child: Container(
        margin: insets,
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          sugestions[sugestionIndex],
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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          elevation: 0,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
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
        ),
        SliverAppBar(
          pinned: true,
          elevation: 0,
          toolbarHeight: 45,
          flexibleSpace: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(sugestions.length,
                    (index) => exploreSugestionWidget(index)),
              ),
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 0.6,
          crossAxisSpacing: 0.6,
          children: List.generate(30, (index) => exploreScreenPost()),
        )
      ],
    );
  }
}
