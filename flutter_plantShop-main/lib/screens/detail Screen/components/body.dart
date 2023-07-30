import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_shop/constants.dart';

import 'bottom_btns.dart';
import 'icons_and_image.dart';
import 'title_country_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IconsAndImage(),
          TItleCountryPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 400,
          ),
          SizedBox(height: 10),
          BottomButtons(),
        ],
      ),
    );
  }
}
