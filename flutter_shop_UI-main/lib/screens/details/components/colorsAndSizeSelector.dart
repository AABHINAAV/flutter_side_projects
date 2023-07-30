import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/Product.dart';

import '../../../constants.dart';
import 'colorDot.dart';

class ColorsAndSizeSelector extends StatelessWidget {
  const ColorsAndSizeSelector({
    Key key,
    @required this.singleProduct,
  }) : super(key: key);

  final Product singleProduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color : ',
              style:
                  Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
            ),
            Row(
              children: [
                ColorDot(
                  specificColor: Color(0xFF356c95),
                  isSelected: true,
                ),
                ColorDot(
                  specificColor: Color(0xFFF8C078),
                  isSelected: false,
                ),
                ColorDot(
                  specificColor: Color(0xFFA29B9B),
                  isSelected: false,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPaddin * 4),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: kTextColor,
              ),
              children: [
                TextSpan(text: 'Size\n'),
                TextSpan(
                  text: '${singleProduct.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
