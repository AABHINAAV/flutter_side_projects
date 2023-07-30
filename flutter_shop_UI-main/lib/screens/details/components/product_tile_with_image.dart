import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class ProductTileWithImage extends StatelessWidget {
  final Product singleProduct;

  const ProductTileWithImage({Key key, this.singleProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aristomatic Hand Bag',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              singleProduct.title,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Price\n',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: '\$${singleProduct.price}',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: kDefaultPaddin * 1.5),
                Expanded(
                  child: Hero(
                    tag: '${singleProduct.id}',
                    child: Image.asset(
                      singleProduct.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
