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

  Widget menuButton(IconData icon, String title) {
    return GestureDetector(
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 15,
              ),
              Text(title),
            ],
          ),
          Divider(
            indent: 45,
            thickness: 0.8,
          ),
        ],
      ),
    );
  }

  void showMenu() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (ctx) {
        return Container(
          height: 450,
          padding: EdgeInsets.all(15),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              menuButton(Icons.settings, 'Settings'),
              menuButton(Icons.replay_outlined, 'Archive'),
              menuButton(Icons.bar_chart, 'Insights'),
              menuButton(Icons.access_time, 'Your Activty'),
              menuButton(Icons.qr_code_scanner, 'QR Code'),
              menuButton(Icons.bookmark_border, 'Saved'),
              menuButton(Icons.list, 'Close Friends'),
              menuButton(Icons.person_add_outlined, 'Discover People'),
            ],
          ),
        );
      },
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
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 32,
            icon: Icon(Icons.menu),
            onPressed: showMenu,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ProfilePanel(),
                Divider(
                  thickness: 1.2,
                ),
              ],
            ),
          ),
          SliverAppBar(
            pinned: true,
            toolbarHeight: 33,
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                galleryViewChoice(Icons.grid_on, 0),
                galleryViewChoice(Icons.person_pin_outlined, 1),
              ],
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 0.6,
            crossAxisSpacing: 0.6,
            children: galleryViewMode == 0
                ? List.generate(
                    25,
                    (index) => profileScreenPost(),
                  )
                : List.generate(
                    4,
                    (index) => profileScreenPost(),
                  ),
          ),
        ],
      ),
    );
  }
}
