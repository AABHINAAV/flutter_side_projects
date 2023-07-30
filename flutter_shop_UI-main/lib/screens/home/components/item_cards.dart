import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product singleProduct;
  final press;

  const ItemCard({Key key, this.singleProduct, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: singleProduct.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: '${singleProduct.id}',
                child: Image.asset(singleProduct.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              singleProduct.title,
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            "\$${singleProduct.price.toString()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
