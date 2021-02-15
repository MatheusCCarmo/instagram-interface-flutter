import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile/profile_panel.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int galleryViewMode = 0;

  Widget profileScreenPost() {
    return GridTile(
      child: GestureDetector(
        child: Image.network(
            'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
        onTap: () {},
      ),
    );
  }

  Widget galleryViewChoice(IconData icon, int viewMode) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: galleryViewMode == viewMode
                ? Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.2,
                    ),
                  )
                : null,
          ),
          child: Icon(
            icon,
            size: 24,
            color: galleryViewMode == viewMode ? Colors.black : Colors.black54,
          ),
        ),
        onTap: () {
          setState(() {
            galleryViewMode = viewMode;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        title: Container(
          child: GestureDetector(
            child: Row(
              children: [
                Text(
                  'username',
                  style: TextStyle(fontSize: 24),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ],
            ),
            onTap: () {},
          ),
        ),
        actions: [
          IconButton(
            iconSize: 32,
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 32,
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          ProfilePanel(),
          Divider(
            thickness: 1.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              galleryViewChoice(Icons.grid_on, 0),
              galleryViewChoice(Icons.person_pin_outlined, 1),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 0.6,
              crossAxisSpacing: 0.6,
              children: galleryViewMode == 0
                  ? List.generate(
                      15,
                      (index) => profileScreenPost(),
                    )
                  : List.generate(
                      4,
                      (index) => profileScreenPost(),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
