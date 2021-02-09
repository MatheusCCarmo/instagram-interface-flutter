import 'package:flutter/material.dart';
import 'package:instagram/widgets/shop/shop_post_widget.dart';
import 'package:instagram/widgets/shop/shop_sugestion_widget.dart';

class ShopScreen extends StatelessWidget {
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
                ShopSugestionWidget('Browse Shops'),
                ShopSugestionWidget('See Editors\' Pick'),
                ShopSugestionWidget('Shop Collections'),
                ShopSugestionWidget('Explore Guides'),
                ShopSugestionWidget('Watch and Shop'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //TODO: change the scroll behavior so the sugestions can scroll with the posts
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              childAspectRatio: 0.85,
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
              ],
            ),
          ),
        )
      ],
    );
    ;
  }
}
