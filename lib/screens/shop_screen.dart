import 'package:flutter/material.dart';
import 'package:instagram/widgets/shop/shop_post_widget.dart';
import 'package:instagram/widgets/shop/shop_sugestion_widget.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;
  bool _isScrolled = false;

  List<String> shopSugestions = [
    'Browse Shops',
    'See Editors\' Pick',
    'Shop Collections',
    'Explore Guides',
    'Watch and Shop',
  ];

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset < 45) {
        setState(() {
          _isScrolled = false;
        });
      } else {
        setState(() {
          _isScrolled = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            toolbarHeight: 45,
            flexibleSpace: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  !_isScrolled
                      ? Container(
                          height: 45,
                          alignment: Alignment.center,
                          child: Text(
                            'Shop',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width - 110,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints.tight(Size(35, 30)),
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
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 35,
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
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
          ),
          SliverToBoxAdapter(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    shopSugestions.length,
                    (index) =>
                        ShopSugestionWidget(shopSugestions[index], index),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              childAspectRatio: 0.83,
              children: [
                ShopPostWidget('trincacamisas', 'Camisa Vasco Dry gigante'),
                ShopPostWidget('keydesgin', 'ANEL SIMPLICIDADE PROFISSIONAL'),
                ShopPostWidget('keydesgin', 'anel simpicidade profissional'),
                ShopPostWidget('tRICACAMISASfsaffsafsa', 'Camisa Vasco Dry'),
                ShopPostWidget('lojasgigantedacolina',
                    'Camisa Vasco Infantil Dia de jogo'),
                ShopPostWidget(
                    'lojabotafogooficial', 'Camisa Botafogo Jogo 1 casa'),
                ShopPostWidget('trincamisas', 'Camisa Vasco Dry'),
                ShopPostWidget('trincamisas', 'Camisa Vasco Dry'),
                ShopPostWidget('lojasgigantedacolina',
                    'Camisa Vasco Dry Gigante da Colina'),
                ShopPostWidget('trincamisas', 'Camisa Vasco Dry'),
                ShopPostWidget('trincamisas', 'Camisa Vasco Dry'),
                ShopPostWidget('trincamisas', 'Camisa Vasco Dry'),
                ShopPostWidget('lojasgigantedacolina',
                    'Camisa Vasco Dry Gigante da Colina'),
                ShopPostWidget('lojasgigantedacolina',
                    'Camisa Vasco Dry Gigante da Colina'),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
