
import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.singleProduct,
  }) : super(key: key);

  final Product singleProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin * 0.5),
      child: Text(
        singleProduct.description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}