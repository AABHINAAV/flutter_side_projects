import 'package:flutter/material.dart';
import 'featured_plant_section.dart';
import 'headerWithSearchBox.dart';
import 'recomended_plants_section.dart';
import 'tile_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSeachBox(size: size),
          TileWithMoreButton(
            title: 'Recommended',
            press: () {},
          ),
          RecomendedPlantsSection(),
          TileWithMoreButton(
            title: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlantSection(),
        ],
      ),
    );
  }
}
