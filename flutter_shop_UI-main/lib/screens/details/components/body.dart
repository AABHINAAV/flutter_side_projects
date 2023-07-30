import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/screens/details/components/product_tile_with_image.dart';
import 'add_and_buy_btns.dart';
import 'cart_counter_and_heart.dart';
import 'colorsAndSizeSelector.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product singleProduct;

  const Body({Key key, this.singleProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        child: Stack(
          children: [
            Container(
              // height: 500,
              margin: EdgeInsets.only(top: size.height * 0.4),
              padding: EdgeInsets.only(
                top: size.height * 0.12,
                left: kDefaultPaddin,
                right: kDefaultPaddin,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  ColorsAndSizeSelector(singleProduct: singleProduct),
                  Description(singleProduct: singleProduct),
                  CartCounterAndHeart(),
                  AddButtonAndBuyButton(singleProduct: singleProduct),
                ],
              ),
            ),
            ProductTileWithImage(
              singleProduct: singleProduct,
            ),
          ],
        ),
      ),
    );
  }
}

