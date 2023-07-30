import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class AddButtonAndBuyButton extends StatelessWidget {
  const AddButtonAndBuyButton({
    Key key,
    @required this.singleProduct,
  }) : super(key: key);

  final Product singleProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin / 2),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: singleProduct.color,
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: singleProduct.color,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
                child: Text(
                  'buy now'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                color: singleProduct.color,
              ),
            ),
          )
        ],
      ),
    );
  }
}
