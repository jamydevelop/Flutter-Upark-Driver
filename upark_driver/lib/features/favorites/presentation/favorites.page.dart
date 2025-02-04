import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/favorites/widget/favorites_card.widget.dart';
import 'package:upark_driver/features/favorites/widget/favorites_search.widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        context: context,
        onTap: () {},
        textTitle: "Favorites",
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: largeSpacing, vertical: extraLargeSpacing),
          child: Column(
            spacing: largeSpacing,
            children: [
              FavoritesSearchWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
              FavoritesCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
